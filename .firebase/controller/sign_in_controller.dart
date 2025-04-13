import 'package:firebase_auth/firebase_auth.dart';
import 'package:trail/utils/library.dart';

class SignInController extends GetxController {
  // Text controllers
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  // Observable boolean to toggle password visibility
  var isPwdVisible = true.obs;

  // Method to toggle visibility
  void togglePasswordVisibility() {
    isPwdVisible.value = !isPwdVisible.value;
  }

  // Login function
  Future<void> login() async {
    if (formKey.currentState == null || !formKey.currentState!.validate()) {
      return;
    }

    try {
      // Authenticate with email and password
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: pwdController.text.trim(),
      );
      // Navigate to the next screen or provide feedback
      Get.snackbar('Success', 'Login successful');
      // TODO: Navigate to the home page or dashboard
      Get.offAll(()=> const HomeScreen());
    } catch (e) {
      // Handle errors
      Get.snackbar('Error', e.toString());
    }
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

  // Form key for validation
  final formKey = GlobalKey<FormState>();
}
