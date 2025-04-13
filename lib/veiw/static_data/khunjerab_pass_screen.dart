import 'package:trail/utils/library.dart';

class KhunjerabPassScreen extends StatelessWidget {
  const KhunjerabPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Device type checks
    final bool isLittleMobile = Responsive.isLittleMobile(context);
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);
    final bool isPhone = Responsive.isIphone(context);
    final bool isIphone = Responsive.isIphone(context);
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final KhunjerabPassDetailModel khunjerabPassData = KhunjerabPassDetailModel(
      name: 'Khunjerab Pass',
      months: 'April-November',
      difficulty: 'Easy',
      elevation: '4,693 m',
      duration: 'Any Length',
      overview: 'Khunjerab Pass, located at an altitude of around 4,700 meters, is one of the highest paved international border crossings in the world. It connects Pakistan\'s Gilgit-Baltistan region with China\'s Xinjiang province via the Karakoram Highway. The pass lies 86 km from Sost (previously Afiyatabad) and takes about three hours by bus. It serves as a critical trade and tourism route, facilitating cross-border movement between the two nations.',
      description: 'The journey toward Khunjerab from Pakistan is a striking contrast of landscapes. For the final 30 km on the Pakistani side, the road cuts through steep, barren desert gorges with no signs of human life, save for the road itself. As one crosses the pass into China, the terrain opens up into a vast, high-altitude plateau, dotted with herds of yaks, sheep, and goats. Tajik herders, living in yurts, tend to these animals, their children and dogs playing nearby. This serene grassland stands in sharp contrast to the desolate Pakistani side.\n\nTwo signs mark the crossing at the pass: a red sign indicating "China drives on the right" and a green one reminding that "Pakistan drives on the left." Notably, the pass also serves as the continental watershed, with all water on the Pakistani side flowing into the Indian Ocean, while on the Chinese side, it vanishes into the Taklamakan Desert. The Taklamakan, whose name ominously translates to "if you go in, you don\'t come out," is one of the largest sandy deserts in the world, adding an element of intrigue to the stark geographical transition.\n\nFrom the pass, it is 32 km to the abandoned Chinese border post at Pirali and another 96 km to Tashkurgan, passing near the border with Tajikistan. Efforts are underway to potentially open a motorable route to Tajikistan in the future.',
      history: 'Historically, the pass has been a strategic point on the ancient Silk Road, connecting the subcontinent with Central Asia and beyond. Its role in facilitating cross-border trade continues to this day, making it a crucial part of the China-Pakistan Economic Corridor (CPEC).',
      imageUrls: [
        'assets/images/image 1.png',
        'assets/images/image 2.png',
        'assets/images/image 3.png',
        'assets/images/image 4.png',
      ],
    );
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: isDesktop?50:20, vertical: isDesktop?50:20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Main Image Container
                  CustomContainer(
                    height: isDesktop
                        ? screenHeight * 0.8
                        : (isMobile ? screenHeight * 0.5 : screenHeight * 0.6),
                    width: screenWidth,
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/c17d3e25be.jpg'),
                      fit: BoxFit.fill,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: khunjerabPassData.name,
                                  fontSize: isDesktop?60:24.75,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                CustomText(
                                  text: khunjerabPassData.months,
                                  fontSize: isDesktop?38.35:14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 0,
                            bottom: 0,
                            child: Row(
                              children: _buildDetailInfoRow(khunjerabPassData,isLittleMobile || isMobile,isDesktop
                                  ? 24
                                  : isMobile? 9:isTablet
                                  ? 18
                                  : isLittleMobile
                                  ? 9
                                  : 9,),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            // bottom: isDesktop ? 0 : null, // Bottom for desktop
                            bottom: 0,
                            // top: (!isDesktop && (isMobile || isLittleMobile)) ? 0 : null, // Top for mobile and little mobile
                            child: Row(
                              children: _buildActionButtons(isMobile || isLittleMobile,isDesktop? 25:6,isDesktop,true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  // Buttons
                  isDesktop
                      ?Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.topRight,
                          child: _buildActionButton('Add Your Check-In',isDesktop,isMobile, false,isTablet)),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5),

                          child: _buildActionButton('Improve this page',isDesktop,isMobile, true,isTablet),
                        ),
                      ),
                    ],
                  )
                      :(isMobile|| isTablet)
                      ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildActionButton('Add Your Check-In',isDesktop,isMobile, false,isTablet),
                      _buildActionButton('Improve this page', isDesktop,isMobile, true,isTablet),
                    ],
                  )
                      :Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildActionButton('Add Your Check-In',isDesktop,isMobile, false,isTablet),
                      const SizedBox(height: 20),
                      _buildActionButton('Improve this page',isDesktop,isMobile, true,isTablet),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  // Overview Section
                  _buildSection(
                    isDesktop: isDesktop,
                    isLittleMobile: isLittleMobile,
                    isTablet: isTablet,
                    title: 'Overview',
                    content: khunjerabPassData.overview,
                    isMobile: isLittleMobile || isMobile,
                    screenWidth: screenWidth,
                  ),

                  // Descriptions Section
                  _buildSection(
                    isDesktop: isDesktop,
                    isLittleMobile: isLittleMobile,
                    isTablet: isTablet,
                    title: 'Descriptions',
                    content: khunjerabPassData.description,
                    isMobile: isLittleMobile || isMobile,
                    screenWidth: screenWidth,
                  ),

                  // History Section
                  _buildSection(
                    isDesktop: isDesktop,
                    isLittleMobile: isLittleMobile,
                    isTablet: isTablet,
                    title: 'History',
                    content: khunjerabPassData.history,
                    isMobile: isLittleMobile || isMobile,
                    screenWidth: screenWidth,
                  ),
                  SizedBox(height: screenHeight * 0.1),
                  CustomText(
                    text: 'Gallery',
                    fontSize: isDesktop
                        ? 50
                        : isMobile
                        ? 35
                        : isTablet
                        ? 40
                        : isLittleMobile
                        ? 18
                        : 20,
                    fontWeight: FontWeight.bold,
                  ),
                  GridView.custom(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverQuiltedGridDelegate(
                      crossAxisCount: isDesktop? 4:2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      pattern: [
                        const QuiltedGridTile(2, 2), // A 2x2 tile
                        const QuiltedGridTile(1, 1), // A 1x1 tile
                        const QuiltedGridTile(1, 1), // Another 1x1 tile
                        const QuiltedGridTile(1, 2), // A 1x2 tile
                      ],
                    ),
                    shrinkWrap: true,
                    childrenDelegate: SliverChildBuilderDelegate(
                          (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            khunjerabPassData.imageUrls[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      childCount: khunjerabPassData.imageUrls.length, // Show all images
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  CustomText(
                    text: 'Explore Next',
                    fontSize: isDesktop
                        ? 50
                        : isMobile
                        ? 35
                        : isTablet
                        ? 40
                        : isLittleMobile
                        ? 18
                        : 20,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  isDesktop
                      ? Row(
                    children: [
                      CustomContainer(
                        height: 520,
                        width: 400,
                        child: CustomPasses(
                          name: "Babusar Pass",
                          image: const AssetImage('assets/images/reduced.jpg'),
                          elevation: '4,693 m',
                          duration: 'Any Length',
                          season: 'June-Nov',
                          isOpen: false,
                          onTap: () {
                            Get.to(() => const BabusarPassScreen());
                          },
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      CustomContainer(
                        height: 520,
                        width: 400,
                        child: CustomPasses(
                          name: "Khunjerab Pass",
                          image: const AssetImage('assets/images/1730fcd271.jpg'),
                          elevation: '4,370 m',
                          duration: 'Any Length',
                          season: 'June-Nov',
                          isOpen: true,
                          onTap: () {
                            Get.to(() => const KhunjerabPassScreen());
                          },
                        ),
                      ),
                    ],
                  )
                      : Column(
                    children: [
                      CustomContainer(
                        height: 460,
                        width: screenWidth,
                        child: CustomPasses(
                          name: "Babusar Pass",
                          image: const AssetImage('assets/images/reduced.jpg'),
                          elevation: '4,693 m',
                          duration: 'Any Length',
                          season: 'June-Nov',
                          isOpen: false,
                          onTap: () {
                            Get.to(() => const BabusarPassScreen());
                          },
                        ),
                      ),
                      SizedBox(height: screenWidth * 0.07),
                      CustomContainer(
                        height: 460,
                        width: screenWidth,
                        child: CustomPasses(
                          name: "Khunjerab Pass",
                          image: const AssetImage('assets/images/1730fcd271.jpg'),
                          elevation: '4,370 m',
                          duration: 'Any Length',
                          season: 'June-Nov',
                          isOpen: true,
                          onTap: () {
                            Get.to(() => const KhunjerabPassScreen());
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.1),
            CustomFooter(
              onSubscribe: () {},
            ),
          ],
        ),
      ),
    );
  }
}
List<Widget> _buildDetailInfoRow(khunjerabPassData ,bool isMobile,fontSize) {
  return [
    _buildDetailInfoItem('Difficulty', khunjerabPassData?.difficulty, isMobile,fontSize),
    SizedBox(height: 5),
    _buildVerticalDivider(),
    SizedBox(height: 5),
    _buildDetailInfoItem('Elevation', khunjerabPassData?.elevation, isMobile,fontSize),
    SizedBox(height: 5),
    _buildVerticalDivider(),
    const SizedBox(height: 5),
    _buildDetailInfoItem('Duration', khunjerabPassData?.duration, isMobile,fontSize),
  ];
}
Widget _buildVerticalDivider() {
  return Container(
    height: 40,
    width: 2,
    color: Colors.white,
    margin: const EdgeInsets.symmetric(horizontal: 10),
  );
}
Widget _buildDetailInfoItem(String title, String value, bool isMobile, fontSize) {
  return Column(
    spacing: 10,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomText(
        text: title,
        fontSize: fontSize,
        color: Colors.white,
      ),
      CustomText(
        text: value,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ],
  );
}
List<Widget> _buildActionButtons(bool isMobile,fontSize,isDesktop,isOpen) {
  return [
    CustomContainer(
      height: isDesktop? 50:25,
      width: isDesktop? 150:35,
      alignment: Alignment.center,
      conColor: Colors.white,
      borderRadius: BorderRadius.circular(isDesktop?20:10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomText(
          text: 'Open',
          fontSize: fontSize,
          color: Colors.black,
        ),
      ),
    ),
    const SizedBox(width: 10),
    CustomContainer(
      height: isDesktop?70:40,
      width: isDesktop?70:40,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white),
      alignment: Alignment.center,
      child: Center(
        child: Icon(
          Icons.circle,
          color: isOpen ? Colors.green : Colors.red,
          size: isDesktop?60:30,
        ),
      ),
    ),
  ];
}

Widget _buildSection({
  required String title,
  required String content,
  required bool isMobile,
  required double screenWidth,
  required isDesktop,
  required isTablet,
  required isLittleMobile,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomText(
        text: title,
        fontSize: isDesktop? 50: 23.57,
        fontWeight: FontWeight.bold,
      ),
      const SizedBox(height: 10),
      CustomContainer(
        width: isMobile ? screenWidth * 0.9 : screenWidth * 0.75,
        child: CustomText(
          text: content,
          fontSize: isDesktop?20:11.5,
        ),
      ),
      const SizedBox(height: 20),
    ],
  );
}
Widget _buildActionButton(String text, bool isDesktop,bool isMobile, bool isSecondary, bool isTablet ) {
  double buttonHeight = isDesktop ? 50 : 40; // Default for non-desktop
  double buttonWidth = isDesktop ? 150 : 60; // Default for non-desktop
  double fontSize = isDesktop ? 25.23 : 13; // Font size based on platform
  return MaterialButton(
    height: buttonHeight,
    minWidth: buttonWidth,

    onPressed: () {},
    color: isSecondary ? Colors.grey[200] : Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(isSecondary?10:20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomText(
        text: text,
        fontSize: fontSize,
        color: isSecondary ? Colors.black : Colors.white,
      ),
    ),
  );
}