import 'package:trail/utils/library.dart';

class SnowLakeTrekScreen extends StatelessWidget {
  const SnowLakeTrekScreen({super.key});

  @override
  Widget build(BuildContext context) {
// Device type checks
    final bool isLittleMobile = Responsive.isLittleMobile(context);
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);
    final bool isPhone = Responsive.isIphone(context);
    final bool isIphone = Responsive.isIphone(context);
    final double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final double screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    final SnowLakeTrekModel snowLakeTrekData = SnowLakeTrekModel(
      name: 'Snow Lake Trek',
      months: 'July to September',
      difficulty: 'Strenuous',
      elevation: '5151 m',
      duration: '14 to 15 days',
      overview: '''The Biafo Glacier to Hispar Pass trek is a demanding and remote expedition that connects the Shigar Valley with Nagar and Hunza, spanning approximately 130 kilometers. This trek traverses the Biafo and Hispar glaciers, totaling around 115 kilometers, and involves significant glacier travel, requiring advanced skills and proper equipment. This route is ideal for seasoned trekkers with glacier experience and mountaineering skills. The route offers breathtaking views of numerous peaks over 6000 meters, and several peaks over 7000 meters visible on the northern side. This trek is not only a physical challenge but also a unique opportunity to experience the solitude and natural beauty of the Karakoram range. A permit from Islamabad and a licensed guide are essential for this trek.

A permit from Islamabad and a licensed guide are essential for this trek. The route is strenuous and technical, requiring glacier experience. It is possible to complete the trek on skis in February or March.
''',
      description: '''
Day 1: Skardu to Thongal or Askolé by Jeep: Start with a 6 to 7-hour jeep ride from Skardu to either Thongal or Askolé, climbing approximately 700 meters. This journey takes you through breathtaking landscapes that signal the start of the Baltoro trek. The road conditions can be challenging depending on the season, with potential landslides or roadworks impacting travel. The views are stunning, making the journey memorable. Once you reach Thongal or Askolé, you’re well-positioned to begin your trek into the Biafo Glacier region.

Day 2: Thongal or Askolé to Namla (3400m): Trek for 6 to 8 hours from Thongal or Askolé to Namla, ascending about 400 meters. The initial segment is a 2 to 3-hour walk to Kesar Shaguran, a key landmark on the Baltoro trek. From here, choose your path: straight towards Concordia or left over a ridge to the Biafo Glacier. Crossing the ridge, you’ll see the Biafo Glacier extending northwest. Navigate along the Braldu River’s cliff and over boulders on the glacier's moraine, passing Salamba and reaching Namla, a flat area with willow bushes and a side stream.

Day 3: Namla to Mango (3650m): Trek for 3 to 5 hours from Namla to Mango, gaining around 250 meters. Start with a crossing of the crevassed glacier area to reach the highest ridge. Enjoy views of the Latok Mountains and Bakhor Das. Continue across unstable boulders and head west to Mango, an ablation valley with grassy areas and willow bushes. The campsite here offers great views, space for tents, and nearby herds of yaks and dzos.

Day 4: Mango to Baintha (3950m): Trek for 4 to 6 hours from Mango to Baintha, ascending about 300 meters. Start with a walk through the ablation valley, passing a small lake before crossing the glacier’s lateral crevasses. The first view of Hispar Pass is striking, flanked by towering peaks. Cross two medial moraines and climb the northern lateral moraine to reach Baintha, a green valley with a clear stream and dense willow shrubs. Baintha, also known as Conways Camp, is ideal for acclimatization, and Baintha Peak offers further exploration opportunities with views of Latok peaks and the Ogre.

Day 5: Baintha to Napina, Marpogoro, or Glacier Camp: Expect a 4 to 6-hour trek from Baintha, ascending 300 to 400 meters. Start with an easy 45-minute walk past lakes and flower-filled valleys, then cross difficult crevasses to reach the glacier’s smooth center. Navigate churned-up ice near Baintha Lukpar Glacier. Continue on smooth ice, crossing small crevasses. Depending on your route, camp at Napina (4250m), a green site with fresh water, on the glacier at around 4300m, or at Marpogoro (4400m), identifiable by its red rock.

Day 6: Napina, Marpogoro, or Glacier Camp to Hispar Pass Base Camp (4700m): From Napina, Marpogoro, or Glacier Camp, trek for 4 to 5 hours to reach Hispar Pass Base Camp, ascending 350 to 450 meters. This involves steady climbing on snow-covered ice, requiring ropes and gaiters. Traverse crevasses and enjoy snowy landscapes. Options include camping at the intersection with Sim Gang Glacier and Snow Lake (around 4500m) or continuing to Snow Lake (4700m), a flat ice bowl surrounded by peaks. Be cautious of crevasses and avoid wandering unroped.

Day 7: To the Top of Hispar Pass (5151m): Ascend for 3 to 5 hours to reach Hispar Pass at 5151 meters, climbing 350 meters. Essential gear includes ropes, gaiters, and waterproof boots. The climb is steady but challenging due to altitude, taking you up the pass's center with views of giant crevasses and seracs. The summit offers expansive views, including Snow Lake and the Ogre. Camp at the pass's flat top, surrounded by 6000-meter peaks, with attention to crevasses and avalanche risks.

Day 8: Hispar Pass to Khanibasa (4500m): Descend for 4 to 5 hours from Hispar Pass to Khanibasa, descending about 650 meters. Begin by crossing the pass’s snow, which may be soft. Stay roped and single file to navigate the descent across smooth snow and potential hidden crevasses. Cross the northern lateral moraine and proceed to a green campsite near the junction with Khanibasa Glacier, offering good water sources and stunning views.

Day 9: Khanibasa to Yutmaru (4300m): Trek for 4 to 6 hours from Khanibasa to Yutmaru, descending about 200 meters. Cross the Khanibasa Glacier, which is relatively straightforward but requires vigilance for crevasses. The route often follows a clear path high on the moraine with views of hanging glaciers and avalanches on the southern ice wall. Camp in a flat, sheltered area in the ablation valley before Yutmaru Glacier, with water available until mid-August.

Day 10: Yutmaru to Shikam Baris (4150m): Expect a 5 to 7-hour trek from Yutmaru to Shikam Baris, descending about 200 meters. Cross the Yutmaru Glacier, navigating deep crevasses and ice formations. Fill your water bottles before leaving the glacier. Climb steeply to a campsite with panoramic views back to Hispar Pass. The route follows a high path above the glacier with scenic views but limited water sources. Shikam Baris offers stone shelters and river water, with views of Haigutum Glacier and Uyum Pass.

Day 11: Shikam Baris to Dachigan (3950m) or Bitanmal (3700m): Trek for 5 to 7 hours from Shikam Baris to Dachigan or Bitanmal, descending about 200 to 400 meters. Cross the Pumarichhish Glacier, which has recently slowed but remains challenging. Dachigan provides a good rest spot with grassy pastures and water, while Bitanmal, a deserted shepherd's settlement, offers excellent views of Kunyang Chhish and Distaghil Sar. Both locations offer exploration opportunities and rest.

Day 12: Dachigan or Bitanmal Across Kunyang Glacier: Cross the Kunyang Glacier in 5 to 7 hours, descending about 100 meters. The glacier, which surged forward in 2007, can be difficult to navigate. Allow extra time if needed to circumvent challenging ice formations. Once across, continue to a suitable campsite, noting that conditions may require additional days if the glacier proves particularly challenging.

Day 12 or 13: Down to Hispar Village (3250m): Descend to Hispar Village in about 4 hours, crossing the Kunyang Glacier and walking through pastures. The village offers insights into local life with its narrow streets and traditional Shia Muslim culture. Camp in the guesthouse grounds and explore the village. The guesthouse may have minimal facilities, and you might need to negotiate with porters for transport to the Karakoram Highway.

Day 13 or 14: Hispar to Huru: Trek from Hispar to Huru in 4 to 5 hours, descending about 450 meters. Follow the jeep road through wheat fields and cross the Hispar River. Navigate the Hispar Gorge, which is often blocked by landslides. Reach Huru, a shepherd hut with surrounding fields and trees. The camp offers a tranquil setting and opportunities to explore, including a steep climb to Rash Phari, a high lake with views of K2.

Day 14 or 15: Huru to Nagar and Hunza: Travel from Huru to Nagar, a 3-hour walk, or continue to Ganesh Bridge on the Karakoram Highway for a 5-hour trek without water sources. Cross the Hispar River and choose between Nagar and Hunza. Nagar offers historical exploration, while Hunza provides more developed amenities. Arrange transport from either location to Karimabad or Aliabad, and enjoy your final days exploring the stunning Hunza Valley. 
''',
      history: '''
The Snow Lake Trek has been a source of fascination for explorers and mountaineers since it was first documented by Martin Conway in 1892. Snow Lake, known locally as Lukpe Lawo, lies in one of the most remote regions of the Karakoram. It represents a confluence of glacial and cultural history, offering glimpses into the geological and human heritage of the Karakoram. Today, the trek remains a testament to human resilience and the untouched beauty of the high-altitude wilderness.
  ''',
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
              padding: EdgeInsets.symmetric(horizontal: isDesktop ? 50 : 20, vertical: isDesktop ? 50 : 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Main Image Container
                  CustomContainer(
                    height: isDesktop
                        ? screenHeight * 0.8
                        : (isMobile ? screenHeight * 0.45 : screenHeight * 0.45),
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
                                  text: snowLakeTrekData.name,
                                  fontSize: isDesktop ? 60 : 24.75,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                CustomText(
                                  text: snowLakeTrekData.months,
                                  fontSize: isDesktop ? 38.35 : 14,
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
                              children: _buildDetailInfoRow(
                                snowLakeTrekData,
                                isLittleMobile || isMobile,
                                isDesktop
                                    ? 24
                                    : isMobile
                                    ? 9
                                    : isTablet
                                    ? 18
                                    : isLittleMobile
                                    ? 9
                                    : 9,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            // bottom: isDesktop ? 0 : null, // Bottom for desktop
                            bottom: 0,
                            // top: (!isDesktop && (isMobile || isLittleMobile)) ? 0 : null, // Top for mobile and little mobile
                            child: Row(
                              children: _buildActionButtons(
                                  isMobile || isLittleMobile, isDesktop ? 25 : 6, isDesktop, false),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  // Buttons
                  isDesktop
                      ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.topRight,
                          child: _buildActionButton(
                              'Add Your Check-In', isDesktop, isMobile, false, isTablet)),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5),

                          child: _buildActionButton('Improve this page', isDesktop, isMobile, true, isTablet),
                        ),
                      ),
                    ],
                  )
                      : (isMobile || isTablet)
                      ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildActionButton('Add Your Check-In', isDesktop, isMobile, false, isTablet),
                      _buildActionButton('Improve this page', isDesktop, isMobile, true, isTablet),
                    ],
                  )
                      : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildActionButton('Add Your Check-In', isDesktop, isMobile, false, isTablet),
                      const SizedBox(height: 20),
                      _buildActionButton('Improve this page', isDesktop, isMobile, true, isTablet),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  // Overview Section
                  _buildSection(
                    isDesktop: isDesktop,
                    isLittleMobile: isLittleMobile,
                    isTablet: isTablet,
                    title: 'Overview',
                    content: snowLakeTrekData.overview,
                    isMobile: isLittleMobile || isMobile,
                    screenWidth: screenWidth,
                  ),

                  // Descriptions Section
                  _buildSection(
                    isDesktop: isDesktop,
                    isLittleMobile: isLittleMobile,
                    isTablet: isTablet,
                    title: 'Descriptions',
                    content: snowLakeTrekData.description,
                    isMobile: isLittleMobile || isMobile,
                    screenWidth: screenWidth,
                  ),

                  // History Section
                  _buildSection(
                    isDesktop: isDesktop,
                    isLittleMobile: isLittleMobile,
                    isTablet: isTablet,
                    title: 'History',
                    content: snowLakeTrekData.history,
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
                      crossAxisCount: isDesktop ? 4 : 2,
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
                            snowLakeTrekData.imageUrls[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      childCount: snowLakeTrekData.imageUrls.length, // Show all images
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
                            Get.to(() => const GondoGoroScreen());
                          },
                          title: "Gondogoro",
                          restrictedText: "Restricted",
                          onTapRestricted: () {},
                          difficultText: 'Difficult',
                          onTapDifficult: () {},
                          image: AssetImage('assets/images/rrrrrrrr.jpg'),
                          elevation: '5585 m',
                          duration: '15 days',
                          season: 'July-Aug',
                          temperature: '-7°C',
                        ),
                      ),
                    ],
                  )
                      : Column(
                    children: [
                      CustomContainer(
                        height: 500,
                        width: screenWidth,
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
                        width: screenWidth,
                        child: CustomTreks(
                          onTap: () {
                            Get.to(() => const GondoGoroScreen());
                          },
                          title: "Gondogoro",
                          restrictedText: "Restricted",
                          onTapRestricted: () {},
                          difficultText: 'Difficult',
                          onTapDifficult: () {},
                          image: AssetImage('assets/images/rrrrrrrr.jpg'),
                          elevation: '5585 m',
                          duration: '15 days',
                          season: 'July-Aug',
                          temperature: '-7°C',
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

  List<Widget> _buildDetailInfoRow(snowLakeTrekData, bool isMobile, fontSize) {
    return [
      _buildDetailInfoItem('Difficulty', snowLakeTrekData?.difficulty, isMobile, fontSize),
      SizedBox(height: 5),
      _buildVerticalDivider(),
      SizedBox(height: 5),
      _buildDetailInfoItem('Elevation', snowLakeTrekData?.elevation, isMobile, fontSize),
      SizedBox(height: 5),
      _buildVerticalDivider(),
      const SizedBox(height: 5),
      _buildDetailInfoItem('Duration', snowLakeTrekData?.duration, isMobile, fontSize),
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

  List<Widget> _buildActionButtons(bool isMobile, fontSize, isDesktop, isOpen) {
    return [
      CustomContainer(
        height: isDesktop ? 50 : 25,
        width: isDesktop ? 150 : 35,
        alignment: Alignment.center,
        conColor: Colors.white,
        borderRadius: BorderRadius.circular(isDesktop ? 20 : 10),
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
        height: isDesktop ? 70 : 40,
        width: isDesktop ? 70 : 40,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
        alignment: Alignment.center,
        child: Center(
          child: Icon(
            Icons.circle,
            color: isOpen ? Colors.green : Colors.red,
            size: isDesktop ? 60 : 30,
          ),
        ),
      ),
    ];
  }

  Widget _buildActionButton(String text, bool isDesktop, bool isMobile, bool isSecondary, bool isTablet) {
    double buttonHeight = isDesktop ? 50 : 40; // Default for non-desktop
    double buttonWidth = isDesktop ? 150 : 60; // Default for non-desktop
    double fontSize = isDesktop ? 25.23 : 13; // Font size based on platform
    return MaterialButton(
      height: buttonHeight,
      minWidth: buttonWidth,

      onPressed: () {},
      color: isSecondary ? Colors.grey[200] : Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(isSecondary ? 10 : 20),
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
          fontSize: isDesktop ? 50 : 23.57,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 10),
        CustomContainer(
          width: isMobile ? screenWidth * 0.9 : screenWidth * 0.75,
          child: CustomText(
            text: content,
            fontSize: isDesktop ? 20 : 11.5,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}