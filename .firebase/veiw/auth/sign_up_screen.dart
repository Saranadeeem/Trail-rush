import 'package:trail/controller/sign_up_controller.dart';
import 'package:trail/utils/library.dart';
import 'package:trail/veiw/auth/sign_in_screen.dart';
import 'package:trail/widgets/custom_text_field.dart';

import '../../widgets/custom_responses.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Device type checks
    final bool isLittleMobile = Responsive.isLittleMobile(context);
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);
    final bool isIphone = Responsive.isIphone(context);

    // Controller for managing visibility of password fields
    SignUpController controller = Get.put(SignUpController());

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xFFF3F6FA), // Light gray background
      body: Form(
        key: controller.formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: isMobile
                  ? Get.width * 0.9 // For mobile, the width will be 90% of the screen
                  : isTablet
                  ? Get.width * 0.7 // For tablet, the width will be 70%
                  : Get.width * 0.5, // For desktop, the width will be 50%
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo/Icon
                  Image.asset(
                    'assets/images/app_launcher_icon.png',
                    height: isMobile ? 24 : 30, // Adjust size for mobile and larger devices
                    width: isMobile ? 24 : 30,
                  ),
                  const SizedBox(height: 20),

                  // Title
                  CustomText(
                    text: "Sign Up For Free",
                    fontSize: isMobile ? 20 : 30, // Adjust font size based on device
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 32),

                  // Email Address Field
                  CustomTextField(
                    label: const CustomText(
                      text: 'Email Address',
                      fontWeight: FontWeight.bold,
                    ),
                    validator: controller.validateEmail,
                    controller: controller.emailController,
                    hintText: "Enter your email...",
                    prefixIcon: const CustomContainer(
                      height: 20,
                      width: 20,
                      image: DecorationImage(image: AssetImage('assets/images/Monotone_email_(1).png')),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.none,
                  ),
                  const SizedBox(height: 20),

                  // Password Field
                  Obx(
                        () => CustomTextField(
                          controller: controller.pwdController,
                          validator: controller.validatePassword,
                      label: const CustomText(
                        text: "Password",
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: "***********************",
                      obscureText: controller.isPwdVisible.value,
                      prefixIcon: const CustomContainer(
                        height: 20,
                        width: 20,
                        image: DecorationImage(image: AssetImage('assets/images/Monotone_email_(2).png')),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: controller.togglePasswordVisibility,
                        child: Icon(
                          controller.isPwdVisible.value
                              ? Icons.visibility_sharp
                              : Icons.visibility_off,
                          color: Colors.black54,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Password Confirmation Field
                  Obx(
                        () => CustomTextField(
                          controller: controller.pwdConfirmController,
                      validator: controller.validateConfirmPassword,
                      label: const CustomText(
                        text: "Password Confirmation",
                        fontWeight: FontWeight.bold,
                      ),
                      hintText: "***********************",
                      obscureText: controller.isConfirmPwdVisible.value,
                      prefixIcon: const CustomContainer(
                        height: 20,
                        width: 20,
                        image: DecorationImage(image: AssetImage('assets/images/Monotone_email_(2).png')),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: controller.toggleConfirmPwdVisibility,
                        child: Icon(
                          controller.isConfirmPwdVisible.value
                              ? Icons.visibility_sharp
                              : Icons.visibility_off,
                          color: Colors.black54,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Sign Up Button
                  MaterialButton(
                    height: 60,
                    minWidth: Get.width,
                    onPressed: controller.signUp,
                    color: const Color(0xFFFF0404), // Custom red color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: const CustomText(
                      text: "Sign Up ✓",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: Get.height * 0.1),

                  // Sign In Option
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                        text: "Already have an account? ",
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => const SignInScreen());
                        },
                        child: const CustomText(
                          text: "Sign In.",
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFF0404),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
