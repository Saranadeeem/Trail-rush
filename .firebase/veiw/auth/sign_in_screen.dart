import 'package:trail/controller/sign_in_controller.dart';
import 'package:trail/utils/library.dart';
import 'package:trail/widgets/custom_text_field.dart';

import '../../widgets/custom_responses.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLittleMobile = Responsive.isLittleMobile(context);
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);
    final bool isIphone = Responsive.isIphone(context);

    // Initialize controller
    SignInController controller = Get.put(SignInController());

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xFFF3F6FA), // Light gray background
      body: Form(
        key: controller.formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: isMobile
                  ? Get.width * 0.9
                  : isTablet
                  ? Get.width * 0.7
                  : Get.width * 0.5, // Adjust width based on screen size
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo/Icon
                  Image.asset(
                    'assets/images/app_launcher_icon.png',
                    height: isMobile ? 24 : 30, // Adjust icon size for mobile
                    width: isMobile ? 24 : 30,
                  ),
                  const SizedBox(height: 20),

                  // Title
                  CustomText(
                    text: "Sign In",
                    fontSize: isMobile ? 20 : 30, // Adjust font size for mobile
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 32),

                  // Email Address Field
                  CustomTextField(
                    controller: controller.emailController,
                    validator: controller.validateEmail,
                    label: CustomText(
                      text: 'Email Address',
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: "Enter your email...",
                    prefixIcon: CustomContainer(
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
                          validator: controller.validatePassword,
                      controller: controller.pwdController,
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
                            controller.isPwdVisible.value ? Icons.visibility_sharp : Icons.visibility_off,
                            color: Colors.black54,
                            size: 18,
                          )),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Sign In Button
                  MaterialButton(
                    height: 60,
                    minWidth: Get.width,
                    onPressed: controller.login,
                    color: const Color(0xFFFF0404), // Custom red color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: const CustomText(
                      text: "Sign In ✓",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: Get.height * 0.1),

                  // Sign In with Social Media
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Image.asset('assets/images/Frame_(16).png'),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.asset('assets/images/Vector_(18).png'),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.asset('assets/images/Subtract.png'),
                        onPressed: () {},
                      ),
                    ],
                  ),

                  // Sign Up Option
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
                          Get.back();
                        },
                        child: const CustomText(
                          text: "Sign Up.",
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