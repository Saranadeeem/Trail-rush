import 'package:trail/utils/library.dart';
import 'package:trail/widgets/custom_team_card_member.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: isDesktop?120:50, right: isDesktop?100:50, top: 45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isDesktop
                        ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Left Column - Text Content
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                               CustomText(
                                text: 'ABOUT US',
                                fontSize:isDesktop
                                    ? 57.38
                                    : isMobile? 45 :isTablet
                                    ? 40
                                    : isLittleMobile
                                    ? 30
                                    : 35,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: Get.height * 0.1),
                               CustomText(
                                text: 'We are redefining adventure\ntourism in Pakistan',
                                fontSize: isDesktop?24:14.03,
                                 fontFamily: 'Roboto',
                                 height: 1.3,
                                color: Colors.black87,
                              ),
                              SizedBox(height: Get.height * 0.05),
                              CustomText(
                                text:
                                'How?',
                                fontSize: isDesktop?24:14.03,
                                height: 1.3,
                              ),
                              SizedBox(height: Get.height * 0.05),
                               CustomText(
                                text:
                                'By leveraging local insights, community guidance and real-time updates we help adventure seekers navigate the northern regions of Pakistan like a local.',
                                 fontSize: isDesktop?24:14.03,
                                 height: 1.3,
                              ),
                              SizedBox(height: Get.height * 0.05),
                               CustomText(
                                text:
                                'To ensure you have the best possible experience we are teaming up with Isobel Shaw, the author of the Trekking Guide to the Karakoram and Hindu Kush of Northern Pakistan, to upgrade and digitalize her renowned guidebook. Her expert insights are now seamlessly woven into our platform, ensuring you have access to the most accurate, in-depth information to make the most of your journey in these stunning regions.',
                                 height: 1.3,
                                 fontSize: isDesktop?24:14.03,
                              ),
                            ],
                          ),
                        ),
                        const Expanded(child: SizedBox(width: 50)),
                        // Right Column - Image
                        Expanded(
                          flex: 4,
                          child: CustomContainer(
                            height: 900,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/mash.jpg'),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ],
                    )
                        : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomContainer(
                          height: isDesktop ? 900 : 400,
                          width: Get.width,
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/mash.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                        CustomText(
                          text: 'ABOUT US',
                          fontSize: isDesktop ? 57.38 : 28.76,
                          fontWeight: FontWeight.bold,
                          height: 1.3,
                        ),
                        SizedBox(height: Get.height * 0.05),
                        CustomText(
                          text: 'We are redefining adventure tourism in Pakistan',
                          fontSize: isDesktop?28:14.03,
                          height: 1.3,
                          color: Colors.black87,
                        ),
                        SizedBox(height: Get.height * 0.02),
                        CustomText(
                          text:
                          'How?\n\nBy leveraging local insights, community guidance and real-time updates we help adventure seekers navigate the northern regions of Pakistan like a local.',
                          fontSize: isDesktop?28:14,
                          height: 1.3,
                        ),
                        SizedBox(height: Get.height * 0.02),
                        CustomText(
                          text:
                          'To ensure you have the best possible experience we are teaming up with Isobel Shaw, the author of the Trekking Guide to the Karakoram and Hindu Kush of Northern Pakistan, to upgrade and digitalize her renowned guidebook. Her expert insights are now seamlessly woven into our platform, ensuring you have access to the most accurate, in-depth information to make the most of your journey in these stunning regions.',
                          fontSize: isDesktop?28:14,
                          height: 1.3,
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.3),
                    isDesktop
                        ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Left Column  - Image
                        Expanded(
                          flex: 2,
                          child: CustomContainer(
                            height: 550,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/Rectangle_138.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: Get.width * 0.1),
                        // Right Column - Text Content
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               CustomText(
                                text: 'Isobel Shaw',
                                 fontSize: isDesktop?28:14,
                                fontWeight: FontWeight.bold,
                                 height: 1.3,
                                 wordSpacing: 1.5,
                              ),
                               CustomText(
                                text: 'Author',
                                 height: 1.3,
                                 fontSize: isDesktop?26:14,
                                color: Colors.grey.shade500,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                               CustomText(
                                text:
                                'Isobel Margaret Shaw, nee O\'Beirne, (born 22 April 1943) is a travel writer from Ireland, renowned for her extensive contributions to tourism and travel literature, particularly about Pakistan. She studied Archaeology, Anthropology, and English at Newnham College, Cambridge University, and has lived in various countries, including Tanzania, Indonesia, the USA, Pakistan, and Switzerland.',
                                 fontSize: isDesktop?24:14,
                                height: 1.3,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                               CustomText(
                                text:
                                'Since the 1980s, Isobel has produced some of the most comprehensive travel guides to Pakistan, including Traveller’s Guide to Pakistan, Pakistan Trekking Guide, Illustrated Guide to Pakistan, and Trekking Guide to the Karakoram and Hindu Kush, a key resource for adventurers. She and her youngest son spent five years exploring trekking possibilities across the northern regions of Pakistan.',
                                 fontSize: isDesktop?24:14,
                                height: 1.3,
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                               CustomText(
                                text:
                                'Isobel’s work promoting Pakistan’s tourism earned her the Friends of Pakistan Award (1993) and the Pakistan Society London Award (2005). Her book, Pakistan Handbook, was also a finalist for the Murray Best Guidebook of the Year, making her a well-known travel writer on Pakistan’s remote areas.',
                                 fontSize: isDesktop?24:14,
                                height: 1.3,
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                        : Column(
                      children: [
                        CustomContainer(
                          height: 350,
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/Rectangle_138.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: Get.height * 0.05),
                        CustomText(
                          text: 'Isobel Shaw',
                          fontSize: isDesktop?28:20,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          text: 'Author',
                          fontSize: isDesktop?28:18,
                          color: Colors.grey,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                        CustomText(
                          text:
                          'Isobel Margaret Shaw, nee O\'Beirne, (born 22 April 1943) is a travel writer from Ireland, renowned for her extensive contributions to tourism and travel literature, particularly about Pakistan. She studied Archaeology, Anthropology, and English at Newnham College, Cambridge University, and has lived in various countries, including Tanzania, Indonesia, the USA, Pakistan, and Switzerland.',
                          fontSize: isDesktop?28:14,
                          height: 1.5,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                        CustomText(
                          text:
                          'Since the 1980s, Isobel has produced some of the most comprehensive travel guides to Pakistan, including Traveller’s Guide to Pakistan, Pakistan Trekking Guide, Illustrated Guide to Pakistan, and Trekking Guide to the Karakoram and Hindu Kush, a key resource for adventurers. She and her youngest son spent five years exploring trekking possibilities across the northern regions of Pakistan.',
                          fontSize: isDesktop?28:14,
                          height: 1.5,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                        CustomText(
                          text:
                          'Isobel’s work promoting Pakistan’s tourism earned her the Friends of Pakistan Award (1993) and the Pakistan Society London Award (2005). Her book, Pakistan Handbook, was also a finalist for the Murray Best Guidebook of the Year, making her a well-known travel writer on Pakistan’s remote areas.',
                          fontSize: isDesktop?28:14,
                          height: 1.5,
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.1),
                    CustomText(
                      text: 'Our Team',
                      fontSize: isDesktop ? 57.38 : 28.76,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: Get.height * 0.15),
                    // Team Member Cards
                    if (isMobile|| isLittleMobile)
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const TeamMemberCard(
                              imagePath: 'assets/images/Pattern-fill-d73fcbd3debb41d33d4efa9c9bfa686a.png',
                              name: 'Sara Nadeem',
                              role: 'Founder',
                              description1: 'UX/UI designer',
                              description2: 'National Snowboarder',
                            ),
                            SizedBox(height: Get.height*0.1),
                            const TeamMemberCard(
                              imagePath: 'assets/images/Pattern-fill-bacba1566bf119c9f1e43ea7a9ac21ba.png',
                              name: 'Fatima Nadeem',
                              role: 'Founder',
                              description1: 'UX/UI designer',
                              description2: 'National Snowboarder',
                            ),
                            SizedBox(height: Get.height*0.1),
                            const TeamMemberCard(
                              imagePath: 'assets/images/Pattern-fill-a570d301251a6610e81744616b63c6f4.png',
                              name: 'Zainab Naqvi',
                              role: 'Co-founder',
                              description1: 'NUST MSIE',
                              description2: '',
                            ),
                          ],
                        ),
                      )
                    else
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Profile 1
                          TeamMemberCard(
                            imagePath: 'assets/images/Pattern-fill-d73fcbd3debb41d33d4efa9c9bfa686a.png',
                            name: 'Sara Nadeem',
                            role: 'Founder',
                            description1: 'UX/UI designer',
                            description2: 'National Snowboarder',
                          ),
                          // Profile 2
                          TeamMemberCard(
                            imagePath: 'assets/images/Pattern-fill-bacba1566bf119c9f1e43ea7a9ac21ba.png',
                            name: 'Fatima Nadeem',
                            role: 'Founder',
                            description1: 'UX/UI designer',
                            description2: 'National Snowboarder',
                          ),
                          // Profile 3
                          TeamMemberCard(
                            imagePath: 'assets/images/Pattern-fill-a570d301251a6610e81744616b63c6f4.png',
                            name: 'Zainab Naqvi',
                            role: 'Co-founder',
                            description1: 'NUST MSIE',
                            description2: '',
                          ),
                        ],
                      ),
                    SizedBox(height: Get.height * 0.2),
                    Center(
                      child: Column(
                        children: [
                          CustomText(
                            text: 'JOIN US',
                            fontSize: isDesktop
                                ? 100
                                : 40,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2,
                          ),
                          CustomText(
                            text: 'In creating the largest directory of trails',
                            fontSize: isDesktop?39:15.25,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: Get.height*0.1),
                          // Join Button
                          MaterialButton(
                            height: 53,
                            onPressed: () {
                              Get.to(()=> const SignUpScreen());
                            },
                            color: const Color(0xffff0404),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(25),
                            child: CustomText(
                              text: 'JOIN AS A CONTRIBUTOR',
                              fontSize: isDesktop ?20:14,
                              color: Colors.white, // Button text color
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.2),
            CustomFooter(
              onSubscribe: () {},
            )
          ],
        ),
      ),
    );
  }
}