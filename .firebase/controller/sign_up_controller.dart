import 'package:firebase_auth/firebase_auth.dart';
import 'package:trail/model/user_model.dart';
import 'package:trail/utils/library.dart';

class SignUpController extends GetxController {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();
  final pwdConfirmController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // Observable boolean to toggle password visibility
  var isPwdVisible = true.obs;
  var isConfirmPwdVisible = true.obs;

  // Sign up logic
  void signUp() async {
    if (!formKey.currentState!.validate()) {
      return; // Exit if form is invalid
    }

    try {
      // Create user with email and password
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: pwdController.text.trim(),
      );

      // Retrieve user ID
      String uid = FirebaseAuth.instance.currentUser!.uid;

      // Create UserModel instance with current timestamp
      UserModel userModel = UserModel(
        uid: uid,
        email: emailController.text.trim(),
        createdTime: DateTime.now().toString(),
      );

      await UserModel.doc(userId: uid).set(userModel);
      // Clear controllers after successful sign-up
      emailController.clear();
      pwdController.clear();
      pwdConfirmController.clear();

      // Navigate to the next screen or provide feedback to the user
      Get.snackbar('Success', 'Account created successfully');
      Get.offAll(()=> const HomeScreen());
    } catch (e) {
      // Handle errors
      Get.snackbar('Error', e.toString());
    }
  }


  // Method to toggle visibility
  void togglePasswordVisibility() {
    isPwdVisible.value = !isPwdVisible.value;
  }

  void toggleConfirmPwdVisibility() {
    isConfirmPwdVisible.value = !isConfirmPwdVisible.value;
  }

  // Validation methods
  String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Confirm Password is required';
    }
    if (value != pwdController.text.trim()) {
      return 'Passwords do not match';
    }
    return null;
  }

  @override
  void dispose() {
    emailController.dispose();
    pwdController.dispose();
    pwdConfirmController.dispose();
    super.dispose();
  }
  @override
  void onClose() {
    emailController.dispose();
    pwdController.dispose();
    pwdConfirmController.dispose();
    super.onClose();
  }
}