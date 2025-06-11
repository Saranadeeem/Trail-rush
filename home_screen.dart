import 'package:google_fonts/google_fonts.dart';
import 'package:trail/controller/collapse_expand_controller.dart';

import '../utils/library.dart';
import 'dart:html' as html;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLittleMobile = Responsive.isLittleMobile(context);
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);
    double sH = MediaQuery.of(context).size.height;
    double sW = MediaQuery.of(context).size.width;
    DataController controller = Get.put(DataController());
    final CollapseExpandController collapseExpandController = Get.put(CollapseExpandController());
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xfff1f4f8),
      endDrawer: endDrawer(context, isDesktop, sW),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(170),
        child: CustomNavBar(
      scaffoldKey: scaffoldKey,
      onTapHome: () => html.window.open('/', '_self'),
      onTapPrice: () => html.window.open('/pricing.html', '_self'),
      onTapAbout: () => html.window.open('/about.html', '_self'),
      onTapJointCommunity: () => html.window.open('/community.html', '_self'),
        
        ),
      ),
      body: Form(
        key: controller.formKey,
        child: SingleChildScrollView(
          child: CustomContainer(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: isDesktop ? 60 : 20, vertical: isDesktop ? 0 : 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Trail Rush',
                          style: GoogleFonts.openSans(
                            fontSize: isDesktop
                                ? 170
                                : isTablet
                                ? 80
                                : isLittleMobile
                                ? 30
                                : 60,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),

                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          width: sW * 0.80,
                          child: CustomText(
                            text:
                                'A community-driven application designed for the navigation and discovery of Pakistan\'s treks and terrains.',
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: isDesktop
                                ? 35
                                : isTablet
                                    ? 35
                                    : isLittleMobile
                                        ? 18
                                        : 20,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      SizedBox(height: sH * 0.06),

                      /// Image and TextField
                      CustomContainer(
                        height: isDesktop
                            ? 550
                            : isTablet
                                ? 400
                                : isLittleMobile
                                    ? 250
                                    : 350,
                        width: double.infinity,
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/Rectangle_81_(1).png'),
                          fit: BoxFit.cover,
                        ),
                        child: Center(
                          child: CustomContainer(
                            borderRadius: BorderRadius.circular(20),
                            child: Obx(
                              () => Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    children: [
                                      SizedBox(height: sH * 0.15),
                                      CustomText(
                                        text: 'DISCOVER YOUR NEXT\nADVENTURE',
                                        height: 1,
                                        textAlign: TextAlign.center,
                                        fontSize: isDesktop
                                            ? 75
                                            : isTablet
                                            ? 50
                                            : isLittleMobile
                                            ? 18
                                            : 30,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                      ),
                                      SizedBox(height: sH * 0.03),
                                      // Search Box
                                      CustomContainer(
                                        width: isDesktop
                                            ? 600
                                            : isTablet
                                            ? 350
                                            : isMobile
                                            ? 260
                                            : isLittleMobile
                                            ? 180
                                            : 250,
                                        height: isDesktop
                                            ? 65
                                            : isTablet
                                            ? 50
                                            : isLittleMobile
                                            ? 30
                                            : 40,
                                        conColor: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        child: Center(
                                          child: Row(
                                            children: [
                                              Flexible(
                                                child: TextField(
                                                  controller: controller.searchController,
                                                  onChanged: (value) => controller.filterTracks(value),
                                                  decoration: InputDecoration(
                                                    isCollapsed: true,
                                                    border: InputBorder.none,
                                                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                                                    hintText: 'Search for treks and terrains',
                                                    hintStyle: TextStyle(
                                                      color: Colors.grey[600],
                                                      fontSize: isLittleMobile ? 10 : 14,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap:
                                                controller.isLoading.value ? null : controller.searchTrack,
                                                child: CustomContainer(
                                                  height: isDesktop
                                                      ? 65
                                                      : isTablet
                                                      ? 50
                                                      : isLittleMobile
                                                      ? 30
                                                      : 40,
                                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                                  conColor: Color(0xffff0404),
                                                  borderRadius: const BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10),
                                                  ),
                                                  child: Center(
                                                    child: controller.isLoading.value
                                                        ? const CircularProgressIndicator(
                                                      color: Colors.white,
                                                    )
                                                        : Text(
                                                      'Search',
                                                      style: TextStyle(
                                                        fontSize: isDesktop?24:isTablet?20:isMobile?18:isLittleMobile?10:18,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                      // Suggestions List
                                      if (controller.filteredTracks.isNotEmpty)
                                        Expanded(
                                          child: Container(
                                            width: MediaQuery.of(context).size.width * (isLittleMobile ? 0.9 : 0.8),
                                            constraints: const BoxConstraints(
                                              maxHeight: 250,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.withOpacity(0.5),
                                                  spreadRadius: 1,
                                                  blurRadius: 5,
                                                ),
                                              ],
                                            ),
                                            child: ListView.builder(
                                              physics: BouncingScrollPhysics(),
                                              itemCount: controller.filteredTracks.length,
                                              itemBuilder: (context, index) {
                                                return ListTile(
                                                  title: Text(
                                                    controller.filteredTracks[index],
                                                    style: TextStyle(fontSize: isLittleMobile ? 12 : 14),
                                                  ),
                                                  onTap: () {
                                                    // Set the selected track in the search box and trigger the search
                                                    controller.searchController.text =
                                                    controller.filteredTracks[index];
                                                    controller.searchTrack();
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height *
                              (isLittleMobile
                                  ? 0.05
                                  : isMobile
                                      ? 0.1
                                      : 0.15)),

                      /// Popular Passes Section
                      CustomText(
                        text: 'Most Popular Passes',
                        fontSize: isDesktop
                            ? 43
                            : isTablet
                                ? 40
                                : isLittleMobile
                                    ? 20
                                    : 30,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.07),
                      MostPopularPassesCustom(
                        isWideScreen: isDesktop,
                        isTablate: isTablet,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height *
                              (isLittleMobile
                                  ? 0.05
                                  : isMobile
                                      ? 0.1
                                      : 0.15)),

                      /// Other Sections
                      CustomText(
                        text: 'Most Popular Treks',
                        fontSize: isDesktop
                            ? 43
                            : isTablet
                                ? 40
                                : isLittleMobile
                                    ? 20
                                    : 30,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                      MostPopularTrekCustom(isWideScreen: isDesktop, isTablate: isTablet),

                      SizedBox(height: MediaQuery.of(context).size.height * 0.15),

                      /// Other Sections
                      CustomText(
                        text: 'List of Treks',
                        fontSize: isDesktop
                            ? 43
                            : isTablet
                                ? 40
                                : isLittleMobile
                                    ? 20
                                    : 30,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                      Obx(
                        () => Column(
                          children: [
                            /// expansion tiles lists
                            CustomExpandableTile(
                              title: '01. BALTISTAN',
                              isExpanded: collapseExpandController.expandedIndex.value == 0,
                              onTileTapped: () => collapseExpandController.toggleExpansion(0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: CustomContainer(
                                          height: 440, width: 170, child: Baltisitan1Fetch(isDesktop: isDesktop))),
                                  const SizedBox(width: 20),
                                  Expanded(
                                      child: CustomContainer(
                                          height: 440, width: 170, child: Baltisitan2Fetch(isDesktop: isDesktop))),
                                ],
                              ),
                            ),
                            CustomExpandableTile(
                              isExpanded: collapseExpandController.expandedIndex.value == 1,
                              onTileTapped: () => collapseExpandController.toggleExpansion(1),
                              title: '02. GILGIT & DIAMER',
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: CustomContainer(
                                          height: 440, width: 170, child: GilgitDiamerFetch(isDesktop: isDesktop))),
                                ],
                              ),
                            ),
                            CustomExpandableTile(
                              isExpanded: collapseExpandController.expandedIndex.value == 2,
                              onTileTapped: () => collapseExpandController.toggleExpansion(2),
                              title: '03. KAGHAN',
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: CustomContainer(
                                          height: 280, width: 170, child: KarghanFetch(isDesktop: isDesktop))),
                                ],
                              ),
                            ),
                            CustomExpandableTile(
                              isExpanded: collapseExpandController.expandedIndex.value == 3,
                              onTileTapped: () => collapseExpandController.toggleExpansion(3),
                              title: '04. NAGAR',
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: CustomContainer(
                                          height: 350, width: 170, child: NagarFetch(isDesktop: isDesktop))),
                                ],
                              ),
                            ),
                            CustomExpandableTile(
                              isExpanded: collapseExpandController.expandedIndex.value == 4,
                              onTileTapped: () => collapseExpandController.toggleExpansion(4),
                              title: '05. HUNZA CENTRAL',
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: CustomContainer(
                                          height: 190, width: 170, child: HunzaCentralFetch(isDesktop: isDesktop))),
                                ],
                              ),
                            ),
                            CustomExpandableTile(
                              isExpanded: collapseExpandController.expandedIndex.value == 5,
                              onTileTapped: () => collapseExpandController.toggleExpansion(5),
                              title: '06. GOJAL-UPPER HUNZA',
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: CustomContainer(
                                          height: 440,
                                          width: 170,
                                          child: GojalUpperHunza1Fetch(isDesktop: isDesktop))),
                                  const SizedBox(width: 20),
                                  Expanded(
                                      child: CustomContainer(
                                          height: 440,
                                          width: 170,
                                          child: GojalUpperHunza2Fetch(isDesktop: isDesktop))),
                                ],
                              ),
                            ),
                            CustomExpandableTile(
                              isExpanded: collapseExpandController.expandedIndex.value == 6,
                              onTileTapped: () => collapseExpandController.toggleExpansion(6),
                              title: '07. GHIZER-WEST OF GILGIT',
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: CustomContainer(
                                          height: 300,
                                          width: 170,
                                          child: GhizerWestOfGilgitFetch(isDesktop: isDesktop))),
                                ],
                              ),
                            ),
                            CustomExpandableTile(
                              isExpanded: collapseExpandController.expandedIndex.value == 7,
                              onTileTapped: () => collapseExpandController.toggleExpansion(7),
                              title: '08. CHITRAL',
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: CustomContainer(
                                          height: 440, width: 170, child: Chitral1Fetch(isDesktop: isDesktop))),
                                  const SizedBox(width: 20),
                                  Expanded(
                                      child: CustomContainer(
                                          height: 440, width: 170, child: Chitral2Fetch(isDesktop: isDesktop))),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.15),

                      /// Pricing Section
                      CustomText(
                        text: 'Pricing',
                        fontSize: isDesktop
                            ? 43
                            : isTablet
                                ? 40
                                : isLittleMobile
                                    ? 20
                                    : 30,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                      CustomContainer(
                        conColor: const Color(0xfff0f0f0),
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          children: [
                            const SizedBox(height: 40),
                            CustomPrice(isWeb: isDesktop),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: MaterialButton(
                                  height: 60,
                                  onPressed: () {
                                    Get.to(() => const PriceScreen());
                                  },
                                  color: const Color(0xffff0404),
                                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Text(
                                    "VIEW FULL PLAN",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                /// Footer Section
                SizedBox(height: MediaQuery.of(context).size.height * 0.12),
                const CustomFooter(),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
