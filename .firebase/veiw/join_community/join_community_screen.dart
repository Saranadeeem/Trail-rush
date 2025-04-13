import 'package:trail/utils/library.dart';

class JoinCommunityScreen extends StatelessWidget {
  const JoinCommunityScreen({super.key});

  // Moved getResponsiveFontSize outside build method for better performance
  double getResponsiveFontSize(BuildContext context,
      {double desktop = 32, double tablet = 24, double mobile = 20, double littleMobile = 18}) {
    if (Responsive.isDesktop(context)) return desktop;
    if (Responsive.isTablet(context)) return tablet;
    if (Responsive.isLittleMobile(context)) return littleMobile;
    return mobile;
  }

  @override
  Widget build(BuildContext context) {
    // Device type checks
    final bool isLittleMobile = Responsive.isLittleMobile(context);
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);
    final bool isIphone = Responsive.isIphone(context);
    double sH = MediaQuery.of(context).size.height;
    double sW = MediaQuery.of(context).size.width;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xfff1f4f8),
      endDrawer: endDrawer(isDesktop, sW),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: CustomNavBar(
          scaffoldKey: scaffoldKey,
          onTapHome: () {
            Get.offAll(() => const HomeScreen());
          },
          onTapPrice: () {
            Get.offAll(() => const PriceScreen());
          },
          onTapAbout: () {
            Get.offAll(() => const AboutScreen());
          },
          onTapJointCommunity: () {
            Get.offAll(() => const JoinCommunityScreen());
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: isDesktop?50:20, vertical: isDesktop?50:20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        // Chat Bubble Section
                        isDesktop
                            ?  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomChatBubble(
                                    isDesktop: isDesktop,
                                    imagePath: 'assets/images/Ellipse_8.png',
                                    message:
                                        'First-time trekker here! What’s a beginner-friendly trail in the Karakoram or Hindu Kush?',
                                  ),
                                  CustomChatBubble(
                                    isDesktop: isDesktop,
                                    imagePath: 'assets/images/Ellipse_12.png',
                                    message:
                                        'Has anyone hiked the Baltoro Glacier recently? How’s the trail condition?',
                                  ),
                                ],
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomChatBubble(
                                    isDesktop: isDesktop,
                                    imagePath: 'assets/images/Ellipse_8.png',
                                    message:
                                        'First-time trekker here! What’s a beginner-friendly trail in the Karakoram or Hindu Kush?',
                                  ),
                                  const SizedBox(height: 10),
                                   CustomChatBubble(
                                    isDesktop: isDesktop,
                                    imagePath: 'assets/images/Ellipse_12.png',
                                    message:
                                        'Has anyone hiked the Baltoro Glacier recently? How’s the trail condition?',
                                  ),
                                ],
                              ),

                        SizedBox(height: isDesktop ? 20 : 15), // Adjusted spacing
                        // Third Chat Bubble Section
                        isDesktop
                            ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomChatBubble(
                              isDesktop: isDesktop,
                              imagePath: 'assets/images/Ellipse_7_(2).png',
                              message:
                              'Heading to Hunza next week. Any recommendations for lesser-known viewpoints or hidden gems?',
                            ),
                            CustomChatBubble(
                              isDesktop: isDesktop,
                              imagePath: 'assets/images/Ellipse_12.png',
                              message:
                              'What’s the terrain like for backcountry snowboarding in Chitral—steep, technical, or more mellow runs?',
                            ),
                          ],
                        )
                            :  const SizedBox(),
                        SizedBox(height: isDesktop ? 20 : 15), // Adjusted spacing
        
                        // Community Header Section
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomText(
                              text: 'COMMUNITY',
                              fontSize: isDesktop?128:40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            const SizedBox(height: 16),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 32),
                              child: CustomText(
                                text: 'Join the Trail Rush community to share your adventures,\n exchange tips, and connect with fellow thrill-seekers.',
                                textAlign: TextAlign.center,
                                fontSize: isDesktop?25:14,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: isDesktop ? 20 : 15), // Adjusted spacing
                        // Chat Bubble Sections
                        isDesktop
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomChatBubble(
                                    isDesktop: isDesktop,
                                    imagePath: 'assets/images/Ellipse_7_(1).png',
                                    message:
                                        'What’s the best way to prepare physically for the K2 Base Camp trek?',
                                  ),
                                  MaterialButton(
                                    height: isDesktop?70:50,
                                    onPressed: () {
                                      CustomUrl.openUrl('https://eq87tt9cu71.typeform.com/to/Uk6Cqc3C');
                                    },
                                    color: const Color(0xfffc0404),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                    child: CustomText(
                                      text: 'Join Waitlist',
                                      fontSize: isDesktop?20:14,
                                      color: Colors.white,
                                      wordSpacing: 1.5,
                                      letterSpacing: 1.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  CustomChatBubble(
                                    isDesktop: isDesktop,
                                    imagePath: 'assets/images/Ellipse_9.png',
                                    message:
                                        'Do I need special mountaineering skills or equipment for crossing Gondogoro La, like crampons or an ice axe?',
                                  ),
                                ],
                              )
                            : Column(
                          children: [
                            CustomChatBubble(
                              isDesktop: isDesktop,
                              imagePath: 'assets/images/Ellipse_7_(2).png',
                              message:
                              'Heading to Hunza next week. Any recommendations for lesser-known viewpoints or hidden gems?',
                            ),
                            const SizedBox(height: 10),
                            CustomChatBubble(
                              isDesktop: isDesktop,
                              imagePath: 'assets/images/Ellipse_12.png',
                              message:
                              'What’s the terrain like for backcountry snowboarding in Chitral—steep, technical, or more mellow runs?',
                            ),
                            const SizedBox(height: 20),
                            MaterialButton(
                              height: isDesktop?70:50,
                              onPressed: () {},
                              color: const Color(0xfffc0404),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                              child: CustomText(
                                text: 'Join Waitlist',
                                fontSize: isDesktop?20:14,
                                color: Colors.white,
                                wordSpacing: 1.5,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: isDesktop ? 20 : 10), // Adjusted spacing
        
                        // Third Chat Bubble Section
                        isDesktop
                            ?  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomChatBubble(
                                    isDesktop: isDesktop,
                                    imagePath: 'assets/images/Ellipse_7_(2).png',
                                    message:
                                        'Heading to Hunza next week. Any recommendations for lesser-known viewpoints or hidden gems?',
                                  ),
                                  CustomChatBubble(
                                    isDesktop: isDesktop,
                                    imagePath: 'assets/images/Ellipse_12.png',
                                    message:
                                        'What’s the terrain like for backcountry snowboarding in Chitral—steep, technical, or more mellow runs?',
                                  ),
                                ],
                              )
                            : const SizedBox(),
                        SizedBox(height: isDesktop ? 20 : 10), // Adjusted spacing
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            CustomFooter(
              onSubscribe: () {},
            ),
          ],
        ),
      ),
    );
  }
}
