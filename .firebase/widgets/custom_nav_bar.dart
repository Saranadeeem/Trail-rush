import 'package:firebase_auth/firebase_auth.dart';
import 'package:trail/utils/library.dart';

class CustomNavBar extends StatelessWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final void Function()? onTapHome;
  final void Function()? onTapPrice;
  final void Function()? onTapAbout;
  final void Function()? onTapJointCommunity;

  const CustomNavBar({
    super.key,
    this.scaffoldKey,
    this.onTapHome,
    this.onTapPrice,
    this.onTapAbout,
    this.onTapJointCommunity,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    final bool isLittleMobile = Responsive.isLittleMobile(context);
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    User? currentUser = FirebaseAuth.instance.currentUser;

    return Container(
        padding: EdgeInsets.symmetric(horizontal: isDesktop?55:25, vertical: 25),
        decoration: BoxDecoration(
          color: const Color(0xfff0e4e4),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

          // Left Side: Logo
          InkWell(
            onTap: onTapHome,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/app_launcher_icon.png',
                  height: 30,
                  width: 30,
                ),
                const SizedBox(width: 5),
                CustomText(
                  text: 'Welcome to TRAIL RUSH',
                  fontSize: isLittleMobile ? 12 : (isMobile ? 14 : (isTablet ? 20 : 24)),
                ),
              ],
            ),
          ),
          // Right Side: Navigation and Auth Buttons
          if (isDesktop)
            Row(
              children: [
                _NavItem(
                  title: 'Pricing',
                  onTap: onTapPrice,
                ),
                _NavItem(
                  title: 'About us',
                  onTap: onTapAbout,
                ),
                _NavItem(
                  title: 'Join our community',
                  onTap: onTapJointCommunity,
                ),
                const SizedBox(width: 16),
              ],
            ),
          if (isDesktop)
            Row(
              children: [
                currentUser == null
                    ? _buildAuthButton(
                        isDesktop: isDesktop,
                        label: 'Sign Up',
                        onPressed: () => Get.to(() => const SignUpScreen()),
                      )
                    : _buildAuthButton(
                  isDesktop: isDesktop,
                        label: 'Log Out',
                        onPressed: showLogoutDialog,
                      ),
              ],
            )
          else
          if (isMobile || screenWidth < 1050)
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (screenWidth >= 450)
                    MaterialButton(
                      onPressed: currentUser == null
                          ? () {
                              Get.to(() => const SignUpScreen());
                            }
                          : showLogoutDialog,
                      color: const Color(0xffff0404),
                      height: 50,
                      minWidth: 80,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: CustomText(
                        text: currentUser == null ? 'Sign Up' : 'LogOut',
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  SizedBox(width: 10)
                ],
              ),
            ),
          if (!isDesktop)
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              scaffoldKey?.currentState?.openEndDrawer(); // Open the drawer for mobile/tablet
            },
          ),
        ])
    );
  }

  Widget _buildAuthButton({required String label, required VoidCallback onPressed,isDesktop}) {
    return MaterialButton(
      onPressed: onPressed,
      color: const Color(0xffff0404),
      height: isDesktop?60:50,
      minWidth: isDesktop?120:100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: CustomText(
        text: label,
        fontSize: 20,
        color: Colors.white,
      ),
    );
  }
}

Drawer? endDrawer(
  bool isDesktop,
  double screenWidth,
) {
  User? currentUser = FirebaseAuth.instance.currentUser;
  return !isDesktop
      ? Drawer(
          width: Get.width * 0.6,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(height: 10),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined)),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: const Icon(Icons.attach_money),
                title: const Text('Pricing'),
                onTap: () => Get.to(() => const PriceScreen()),
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('About us'),
                onTap: () => Get.to(() => const AboutScreen()),
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text('Join our community'),
                onTap: () => Get.to(() => const JoinCommunityScreen()),
              ),
              if (screenWidth < 450)
              ListTile(
                leading: currentUser == null ? const Icon(Icons.login) : const Icon(Icons.logout),
                title: currentUser == null ? const Text('Sign Up') : const Text('Log Out'),
                onTap: currentUser == null
                    ? () => Get.to(() => const SignUpScreen())
                    : showLogoutDialog, // Show the correct dialog
              ),

            ],
          ),
        )
      : null;
}

void showLogoutDialog() {
  Get.defaultDialog(
    title: "Confirm Logout",
    titleStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    content: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Are you sure you want to log out? This will end your current session.",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
    ),
    barrierDismissible: false,
    radius: 15,
    actions: [
      MaterialButton(
        onPressed: () {
          Get.back(); // Close the dialog
        },
        color: Colors.grey[300],
        height: 40,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text(
          "Cancel",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      MaterialButton(
        onPressed: () async {
          await FirebaseAuth.instance.signOut();
          Get.back(); // Close the dialog
          Get.snackbar(
            'Logged Out',
            'You have been successfully logged out.',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Colors.white,
          );
          Get.offAll(() => const HomeScreen()); // Navigate to HomeScreen
        },
        color: Colors.red,
        height: 40,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text(
          "Log Out",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    ],
  );
}

class _NavItem extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const _NavItem({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: InkWell(
        onTap: onTap,
        child: Text(
          title,
          style: TextStyle(fontSize: 20, color: Colors.black87),
        ),
      ),
    );
  }
}
