import 'package:trail/utils/library.dart';

class DetailScreen extends StatelessWidget {
  final DetailTracksModel? detailData;

  const DetailScreen({super.key, this.detailData});

  @override
  Widget build(BuildContext context) {
    final bool isLittleMobile = Responsive.isLittleMobile(context);
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);
    final bool isPhone = Responsive.isIphone(context);
    final bool isIphone = Responsive.isIphone(context);
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final List<String> imageUrls = [
      'assets/images/image 1.png',
      'assets/images/image 2.png',
      'assets/images/image 3.png',
      'assets/images/image 4.png',
    ];
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
            Get.to(() => const HomeScreen());
          },
          onTapPrice: () {
            Get.to(() => const PriceScreen());
          },
          onTapAbout: () {
            Get.to(() => const AboutScreen());
          },
          onTapJointCommunity: () {
            Get.to(() => const JoinCommunityScreen());
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: isDesktop?50:15, vertical: isDesktop?50:15),
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
                      fit: BoxFit.cover,
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
                                  text: detailData?.name ?? "No Data",
                                  fontSize: isDesktop?60:24.75,
                                  textAlign: TextAlign.center,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                CustomText(
                                  text: detailData?.months ?? "No Data",
                                  fontSize: isDesktop?38.35:14,
                                  textAlign: TextAlign.center,
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
                              children: _buildDetailInfoRow(isLittleMobile || isMobile,isDesktop
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
                  SizedBox(height: isLittleMobile ? 15 : (isMobile ? 20 : 40)),

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

                  SizedBox(height: isLittleMobile ? 15 : (isMobile ? 20 : 40)),

                  // Overview Section
                  _buildSection(
                    isDesktop: isDesktop,
                    isLittleMobile: isLittleMobile,
                    isTablet: isTablet,
                    title: 'Overview',
                    content: detailData?.overView ?? "No Data",
                    isMobile: isLittleMobile || isMobile,
                    screenWidth: screenWidth,
                  ),

                  // Descriptions Section
                  _buildSection(
                    isDesktop: isDesktop,
                    isLittleMobile: isLittleMobile,
                    isTablet: isTablet,
                    title: 'Descriptions',
                    content: detailData?.description ?? "No Data",
                    isMobile: isLittleMobile || isMobile,
                    screenWidth: screenWidth,
                  ),

                  // History Section
                  _buildSection(
                    isDesktop: isDesktop,
                    isLittleMobile: isLittleMobile,
                    isTablet: isTablet,
                    title: 'History',
                    content: detailData?.history ?? "No Data",
                    isMobile: isLittleMobile || isMobile,
                    screenWidth: screenWidth,
                  ),

                  // Gallery Section
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
                  SizedBox(height: isLittleMobile ? 10 : 20),
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
                            imageUrls[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      childCount: imageUrls.length, // Show all images
                    ),
                  ),
                  SizedBox(height: 40),
                  // Explore Next Section
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
                  SizedBox(height: isLittleMobile ? 20 : 40),
                  isDesktop
                      ? Row(
                    children: [
                      CustomContainer(
                        height: 520,
                        width: 400,
                        child: CustomPasses(
                          name: "Babusar Pass",
                          image: const AssetImage('assets/images/reduced.jpg'),
                          elevation: '4,173 m',
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
                          image: const AssetImage('assets/images/reduced.jpg'),
                          elevation: '4,173 m',
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
                          elevation: '4,173 m',
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
                          image: const AssetImage('assets/images/reduced.jpg'),
                          elevation: '4,173 m',
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
            SizedBox(height: 40),
            CustomFooter(
              onSubscribe: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required String content,
    required bool isMobile,
    required double screenWidth,
    required isDesktop,
    required isTablet,
    required isLittleMobile,
  }) {return Column(
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
    );}
  List<Widget> _buildDetailInfoRow(bool isMobile,fontSize) {
    return [
      _buildDetailInfoItem('Difficulty', detailData?.difficulty ?? "No Data", isMobile,fontSize),
      _buildVerticalDivider(),
      _buildDetailInfoItem('Elevation', detailData?.elevation ?? "No Data", isMobile,fontSize),
      _buildVerticalDivider(),
      _buildDetailInfoItem('Duration', detailData?.duration ?? "No Data", isMobile,fontSize),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          fontSize: fontSize,
          color: Colors.white70,
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