import 'package:trail/utils/library.dart';
class K2BasecampTrekScreen extends StatelessWidget {

  const K2BasecampTrekScreen({super.key});

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

    final K2BasecampTrekModel k2BasecampTrekData = K2BasecampTrekModel(
      name: 'K2 Basecamp Trek',
      months: 'Mid July to September',
      difficulty: 'Strenuous',
      elevation: '5585 m',
      duration: '6 - 9 Days',
      overview: """The Baltoro Glacier trek is renowned for its breathtaking mountain views, featuring eight of the world's 30 highest peaks clustered around the end of the glacier. Trekkers pass through the heart of the Karakoram Range, with views of iconic peaks such as K2, Broad Peak, and Gasherbrum. This is one of Pakistan's most popular trekking routes, attracting mountaineers and trekkers from across the globe.

Although the scenery is unrivaled, the trek's popularity has led to overcrowding, environmental degradation, and diminished wildlife. Despite these issues, the sheer grandeur of the landscape is unforgettable, making this trek a must for those seeking mountain adventure.

Trek Requirements: Permits must be obtained through a licensed travel agency in Islamabad, and trekkers must be briefed by the Ministry of Tourism before beginning. The journey requires multiple porters, and trekkers should prepare for high costs, including porter wages, food, fuel, and equipment. Each trekking party must follow strict regulations regarding porter welfare, including providing warm clothing, shelter, and food beyond Paiyu.

Expenses and Porters: This trek is one of the most expensive in Pakistan, partly due to the need for a significant number of porters (typically three per person), a guide, and a cook. Regulations also mandate rest days and bonus payments for porters, which can increase costs further. Trekkers must ensure that porters are properly equipped for the cold and that all rubbish is carried out to protect the fragile mountain environment.

Route and Pay Stages: The traditional trekking route follows this sequence: Askolé, Korophon, Jola, Bardumal, Paiyu, Liligo, Urdukas, Goro I, Goro II, and Concordia. Some groups may extend their journey to Broad Peak Base Camp or K2 Base Camp. The route involves walking through rugged terrain, including unstable scree slopes and glacial moraine, but no technical climbing skills are required. Due to the constant flow of trekkers and porters, the path is well-trodden and easy to follow.

Challenges and Rewards: This trek is physically demanding, featuring vertiginous paths, long glacier walks, and high altitudes that can lead to headaches and altitude sickness. In the initial stages of the trek, trekkers should take good precautions against the sun, as there is a risk of heat stroke and sunburn. Despite these challenges, the mountain scenery at Concordia is unparalleled, offering views of some of the most spectacular peaks in the world. Many trekkers describe the experience as life-changing.
""",
      description: """
Stage 1: Skardu to Askolé (6-7 hours)
The journey from Skardu to Askolé covers 125 km along a rugged jeep road. The ascent is steady, rising 700 meters in altitude as the route traverses barren landscapes and mountain passes. Landslides can often block the road, especially near Apoaligon and Hoto, requiring trekkers to cross these sections on foot. Along the way, there are three crossings over the Braldu River, offering picturesque views of its fast-moving waters. As the road nears Askolé, trekkers are greeted with a view of the village and the surrounding peaks. Askolé, sitting at 3,000m, is the last village before entering the wild and serves as a critical supply point for expeditions into the Karakoram. The village itself is simple but rich in culture, and it’s the starting point for most treks into the Baltoro region.

Stage 2: Askolé to Korophon (4-6 hours)
The trek officially begins as you leave Askolé’s cultivated fields behind and follow the dusty, narrow path through rocky wastelands. After about two hours, you’ll reach the Biafo Glacier, which requires a careful crossing of about 45 minutes. Depending on the season, a detour might allow crossing via a bridge if the glacier proves difficult. After passing the glacier, trekkers continue through open valleys towards Korophon, a small, green oasis at 3,100 meters. Korophon offers a relatively comfortable campsite shaded by willows, with fresh water nearby. The name Korophon comes from a large, cup-shaped stone found in the area, adding some cultural intrigue to the spot.

Stage 3: Korophon to Skambosok (5-7 hours)
This stage presents an early challenge with the crossing of the Dumordo River. During the peak trekking season, a footbridge is often set up to assist in crossing, but otherwise, trekkers may need to wade across or take a detour. After crossing, a 20-minute walk leads to Jola Camp, a dusty and rather barren spot mostly used by local herders on their way to summer pastures. Continuing onwards, the terrain remains challenging with several sections of undulating rock and sand, eventually reaching the campsite at Skambosok. This site is often preferred due to its relative shelter from the wind, located at 3,300 meters. It offers decent conditions and is a popular stopping point for groups heading further up the Baltoro.

Stage 4: Skambosok to Paiyu (3-5 hours)
Leaving Skambosok, the trek to Paiyu offers some of the most varied scenery thus far. The route follows the trail above the Braldu River, providing a view of the surrounding peaks, including Paiyu Peak (6,610m). The steady ascent passes through stony valleys and ridges, with the imposing Baltoro Glacier finally coming into view. After a rest stop with a perfect vantage point over the glacier’s snout, you’ll reach Paiyu, a well-established campsite at 3,500 meters. Paiyu is often used as a rest day for acclimatization, offering some basic infrastructure like stone terraces and fresh water. However, in recent years, concerns about pollution have led many to camp slightly higher, where conditions are cleaner and the views even more impressive.

Stage 5: Paiyu to Khoburtsi (5-8 hours)
The trek from Paiyu marks the transition from the lower altitudes into the more glaciated region of the Karakoram. Beyond Paiyu, trekkers will face the challenge of crossing the snout of the Baltoro Glacier, a rocky and unstable section requiring careful footing. After navigating across the glacier’s surface, the trail continues on the northern moraine with panoramic views of towering peaks. The path eventually leads to the camp at Khoburtsi, situated at 3,800 meters, opposite the Liligo Glacier. Khoburtsi offers decent camping conditions with shaded areas and a steady water supply, making it a favorable stop for trekkers before the next push upwards.

Stage 6: Khoburtsi to Urdukas (2-4 hours)
This stage is relatively short but offers some of the most spectacular views on the entire trek. Following the ridge of the Baltoro Glacier’s moraine, trekkers are treated to uninterrupted vistas of the famous Trango Towers, Cathedral, and Uli Biaho peaks. The trail gradually climbs towards Urdukas, a scenic campsite located at 4,200 meters. Urdukas is built into the mountainside, offering natural terraces with dramatic views across the Baltoro. While the campsite has some basic facilities, it is recommended to camp higher for better access to fresh water. The breathtaking scenery makes Urdukas a favorite among trekkers despite its occasional crowding.

Stage 7: Urdukas to Goro Two (5-8 hours)
Leaving Urdukas, the trek now fully enters glacier territory. The path descends onto the Baltoro Glacier, and trekkers must navigate a tricky section filled with crevasses and unstable ice formations. Once past this initial hurdle, the route becomes more straightforward as it follows the central spine of the glacier. Towering ice walls and glacial streams accompany the trail, while peaks such as Masherbrum (7,821m) and Mustagh Tower (7,273m) dominate the skyline. Goro Two, at 4,300 meters, is a basic camp perched on the stony surface of the glacier. The conditions here are stark, with few amenities and rough, icy ground underfoot, but the views more than compensate for the discomfort.

Stage 8: Goro Two to Concordia (4-6 hours)
The trek from Goro Two to Concordia is one of the most exhilarating parts of the journey. Walking in the center of the Baltoro Glacier, trekkers pass some of the most iconic peaks in the world. The journey towards Concordia gradually reveals the full majesty of the Karakoram Range, with K2 (8,611m) dominating the skyline. Concordia, at 4,650 meters, is the confluence of the Baltoro, Godwin-Austen, and several other glaciers. This vast ice-covered amphitheater offers 360-degree views of four of the world’s fourteen highest peaks: K2, Broad Peak (8,051m), Gasherbrum I (8,068m), and Gasherbrum II (8,035m). It’s a breathtaking sight that marks the high point of the trek, both literally and figuratively.

Stage 9: Concordia to K2 Base Camp (7-9 hours)
The route from Concordia to K2 Base Camp is a challenging but unforgettable experience. This section follows the Godwin-Austen Glacier, with its rough, icy terrain and numerous crevasses. The path gradually ascends towards the base of K2, providing ever-closer views of its sheer, granite slopes. K2 Base Camp, at 5,100 meters, sits under the shadow of the second-highest mountain in the world, and the sense of achievement upon reaching it is immense. This section of the trek is not for the faint-hearted but offers unparalleled views of K2 and the surrounding peaks.

Stage 10: K2 Base Camp to Concordia (6-8 hours)
After spending time at K2 Base Camp, the return journey to Concordia allows trekkers to appreciate the dramatic scenery once more. The path retraces its steps down the Godwin-Austen Glacier, passing familiar landmarks and offering one last look at the towering peaks before descending back to Concordia. Though the route is physically demanding, the opportunity to soak in these world-class mountain views once again makes the effort worthwhile.

Stage 11 to 19: Return to Askolé by the same route:: 4 to 6 days. The return journey follows the same route back to Askolé. While it’s possible to complete the trek in four to five days if fit, tour groups often allocate six days to ensure a comfortable pace.
""",


      history: 'The K2 Basecamp Trek has a long history tied to expeditions attempting to summit K2, the world\'s second-highest mountain. It has served as a route for adventurers, mountaineers, and explorers since the early 20th century, including notable attempts by international climbing teams. The trail also passes through villages and campsites with a rich cultural and historical significance, highlighting the local Balti culture and traditions. The trek remains a testament to human endurance and a gateway to one of the most remote and majestic regions of the world.',
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
              padding: EdgeInsets.symmetric(horizontal: isDesktop?45:15, vertical: isDesktop?45:15),
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
                                  text: k2BasecampTrekData.name,
                                  fontSize: isDesktop?60:24.75,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                CustomText(
                                  text: k2BasecampTrekData.months,
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
                              children: _buildDetailInfoRow(k2BasecampTrekData,isLittleMobile || isMobile,isDesktop
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
                    content: k2BasecampTrekData.overview,
                    isMobile: isLittleMobile || isMobile,
                    screenWidth: screenWidth,
                  ),

                  // Descriptions Section
                  _buildSection(
                    isDesktop: isDesktop,
                    isLittleMobile: isLittleMobile,
                    isTablet: isTablet,
                    title: 'Descriptions',
                    content: k2BasecampTrekData.description,
                    isMobile: isLittleMobile || isMobile,
                    screenWidth: screenWidth,
                  ),

                  // History Section
                  _buildSection(
                    isDesktop: isDesktop,
                    isLittleMobile: isLittleMobile,
                    isTablet: isTablet,
                    title: 'History',
                    content: k2BasecampTrekData.history,
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
                            k2BasecampTrekData.imageUrls[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      childCount: k2BasecampTrekData.imageUrls.length, // Show all images
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
                      SizedBox(height: screenWidth * 0.07),
                      CustomContainer(
                        height: 500,
                        width: screenWidth,
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

  List<Widget> _buildDetailInfoRow(k2BasecampTrekData ,bool isMobile,fontSize) {
    return [
      _buildDetailInfoItem('Difficulty', k2BasecampTrekData?.difficulty, isMobile,fontSize),
      SizedBox(height: 5),
      _buildVerticalDivider(),
      SizedBox(height: 5),
      _buildDetailInfoItem('Elevation', k2BasecampTrekData?.elevation, isMobile,fontSize),
      SizedBox(height: 5),
      _buildVerticalDivider(),
      const SizedBox(height: 5),
      _buildDetailInfoItem('Duration', k2BasecampTrekData?.duration, isMobile,fontSize),
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