import 'package:trail/utils/library.dart';

class GondoGoroScreen extends StatelessWidget {
  const GondoGoroScreen({super.key});

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

    final GondoGoroModel gondoGoroData = GondoGoroModel(
      name: 'Gondogoro La Trek',
      months: 'Mid July to September',
      difficulty: 'Strenuous',
      elevation: '5585 m',
      duration: '15 Days',
      overview: "The Gondogoro La trek is a challenging and iconic adventure in the Karakoram Range."
          "Trekkers are rewarded with spectacular views of the Karakoram's "
          "towering peaks, including K2 and Broad Peak."
          "This high-altitude trek provides access to Concordia, also known as the Throne Room of the Mountain Gods."
          "The route traverses rugged terrain, glaciers, and the Gondogoro Pass, offering breathtaking scenery. "
          "Due to its difficulty and technical sections, this trek is recommended for experienced trekkers equipped with mountaineering skills.",
      description: """
Stage 1: Hushe to Shaithcho (3-4 hours)
The journey begins in Hushe, the last inhabited village in the Hushe Valley. Trekkers pass through terraced fields, woodlands, and the Charaksa River valley, leading to the Shaithcho campsite nestled in a scenic forested area.

Stage 2: Shaithcho to Gondogoro Camp (2-4 hours)
This stage involves a steeper ascent along the lateral moraine of the Charaksa Glacier, offering breathtaking views of Masherbrum Peak. Gondogoro Camp serves as an acclimatization point.

Stage 3: Gondogoro Camp to Dalsangpa (2-4 hours)
Trekkers move along the glacier's moraine to Dalsangpa, a picturesque location surrounded by serene lakes and wildflowers during summer.

Stage 4: Dalsangpa to Khuspang (4-6 hours)
The trail ascends through rocky terrain to Khuspang, located at the foot of Gondogoro La. This is a high-altitude campsite offering stunning views of Laila Peak.

Stage 5: Khuspang to Gondogoro La Pass (8-10 hours)
The most challenging part of the trek involves navigating steep, icy slopes with fixed ropes and crampons. The summit offers panoramic views of K2, Broad Peak, and Gasherbrum peaks before descending to Ali Camp.

Stage 6: Ali Camp to Concordia (6-8 hours)
Trekkers continue towards Concordia, enjoying relatively easier terrain with unmatched views of the Karakoram's iconic peaks. Concordia is often referred to as the "Throne Room of the Mountain Gods."

Stage 7: Concordia to K2 Base Camp (Optional, 7-9 hours)
An optional trek leads to K2 Base Camp, offering an unforgettable experience of standing at the base of the world's second-highest peak.
      """,
      history: 'The Gondogoro Pass trek has long been a crossroads for mountaineers and explorers. '
          'Its route is steeped in cultural and historical significance, highlighting the traditions of Balti communities. '
          'Today, the region is part of the Central Karakoram National Park, emphasizing conservation and sustainable trekking practices.',
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
                  // Main Image Container (Responsive height and width)
                  CustomContainer(
                    height: isDesktop
                        ? screenHeight * 0.8
                        : (isMobile ? screenHeight * 0.5 : screenHeight * 0.6),
                    width: screenWidth,
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/eoqem_j.jpg'),
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
                                  text: gondoGoroData.name,
                                  fontSize: isDesktop?60:24.75,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                CustomText(
                                  text: gondoGoroData.months,
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
                              children: _buildDetailInfoRow(gondoGoroData,isLittleMobile || isMobile,isDesktop
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
                              children: _buildActionButtons(isMobile || isLittleMobile,isDesktop? 25:6,isDesktop,false),
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
                    content: gondoGoroData.overview,
                    isMobile: isLittleMobile || isMobile,
                    screenWidth: screenWidth,
                  ),

                  // Descriptions Section
                  _buildSection(
                    isDesktop: isDesktop,
                    isLittleMobile: isLittleMobile,
                    isTablet: isTablet,
                    title: 'Descriptions',
                    content: gondoGoroData.description,
                    isMobile: isLittleMobile || isMobile,
                    screenWidth: screenWidth,
                  ),

                  // History Section
                  _buildSection(
                    isDesktop: isDesktop,
                    isLittleMobile: isLittleMobile,
                    isTablet: isTablet,
                    title: 'History',
                    content: gondoGoroData.history,
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
                            gondoGoroData.imageUrls[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      childCount: gondoGoroData.imageUrls.length, // Show all images
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
                  SizedBox(height: screenHeight * 0.1),
                  isDesktop
                      ? Row(
                    children: [
                      CustomContainer(
                        height: 560,
                        width: 400,
                        child: CustomTreks(
                          onTap: () {
                            Get.to(() => const K2BasecampTrekScreen());
                          },
                          title: "K2 Basecamp Trek",
                          restrictedText: "Restricted",
                          onTapRestricted: () {},
                          difficultText: 'Difficult',
                          onTapDifficult: () {},
                          image: AssetImage('assets/images/102849000b42d650914852507899192a.jpg'),
                          elevation: '5000 m',
                          duration: '15 days',
                          season: 'July-Sep',
                          temperature: '-12°C',
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      CustomContainer(
                        height: 560,
                        width: 400,
                        child: CustomTreks(
                          onTap: () {
                            Get.to(() => const K2BasecampTrekScreen());
                          },
                          title: "Snow Lake Trek",
                          restrictedText: "Restricted",
                          onTapRestricted: () {},
                          difficultText: 'Difficult',
                          onTapDifficult: () {},
                          image: AssetImage('assets/images/Rectangle_112_(4).png'),
                          elevation: '5000 m',
                          duration: '15 days',
                          season: 'July-Sep',
                          temperature: '-12°C',
                        ),
                      ),
                    ],
                  )
                      : Column(
                    children: [
                      CustomContainer(
                        height: 500,
                        width: Get.width,
                        child: CustomTreks(
                          onTap: () {
                            Get.to(() => const K2BasecampTrekScreen());
                          },
                          title: "K2 Basecamp Trek",
                          restrictedText: "Restricted",
                          onTapRestricted: () {},
                          difficultText: 'Difficult',
                          onTapDifficult: () {},
                          image: AssetImage('assets/images/102849000b42d650914852507899192a.jpg'),
                          elevation: '5000 m',
                          duration: '15 days',
                          season: 'July-Sep',
                          temperature: '-12°C',
                        ),
                      ),
                      SizedBox(height: screenWidth * 0.07),
                      CustomContainer(
                        height: 500,
                        width: Get.width,
                        child: CustomTreks(
                          onTap: () {
                            Get.to(() => const K2BasecampTrekScreen());
                          },
                          title: "Snow Lake Trek",
                          restrictedText: "Restricted",
                          onTapRestricted: () {},
                          difficultText: 'Difficult',
                          onTapDifficult: () {},
                          image: AssetImage('assets/images/Rectangle_112_(4).png'),
                          elevation: '5000 m',
                          duration: '15 days',
                          season: 'July-Sep',
                          temperature: '-12°C',
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
  List<Widget> _buildDetailInfoRow(gondoGoroData ,bool isMobile,fontSize) {
    return [
      _buildDetailInfoItem('Difficulty', gondoGoroData?.difficulty, isMobile,fontSize),
      SizedBox(height: 5),
      _buildVerticalDivider(),
      SizedBox(height: 5),
      _buildDetailInfoItem('Elevation', gondoGoroData?.elevation, isMobile,fontSize),
      SizedBox(height: 5),
      _buildVerticalDivider(),
      const SizedBox(height: 5),
      _buildDetailInfoItem('Duration', gondoGoroData?.duration, isMobile,fontSize),
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