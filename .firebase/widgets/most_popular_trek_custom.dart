import '../utils/library.dart';

class MostPopularTrekCustom extends StatelessWidget {
  final bool isWideScreen;
  final bool isTablate;
  const MostPopularTrekCustom({super.key, required this.isWideScreen, required this.isTablate});

  @override
  Widget build(BuildContext context) {
    return isWideScreen
        ? Row(
      children: [
        Expanded(
          child: CustomTreks(
            onTap: () {
              Get.to(() => const K2BasecampTrekScreen());
            },
            title: "K2 Basecamp Trek",
            restrictedText: "Restricted",
            onTapRestricted: () {},
            difficultText: 'Difficult',
            onTapDifficult: () {},
            image: const AssetImage('assets/images/102849000b42d650914852507899192a.jpg'),
            elevation: '5000 m',
            duration: '15 days',
            season: 'July-Sep',
            temperature: '-12°C',
          ),
        ),
        SizedBox(width: Get.width * 0.04),
        Expanded(
          child: CustomTreks(
            onTap: () {
              Get.to(() => const GondoGoroScreen());
            },
            title: "Gondogoro",
            restrictedText: "Restricted",
            onTapRestricted: () {},
            difficultText: 'Difficult',
            onTapDifficult: () {},
            image: const AssetImage('assets/images/rrrrrrrr.jpg'),
            elevation: '5585 m',
            duration: '15 days',
            season: 'July-Aug',
            temperature: '-7°C',
          ),
        ),
        SizedBox(width: Get.width * 0.04),
        Expanded(
          child: CustomTreks(
            onTap: () {
              Get.to(() => const SnowLakeTrekScreen());
            },
            title: "Snow Lake Trek",
            restrictedText: "Restricted",
            onTapRestricted: () {},
            difficultText: 'Difficult',
            onTapDifficult: () {},
            image: const AssetImage('assets/images/Rectangle_112_(4).png'),
            elevation: '5151 m',
            duration: '14-15 days',
            season: 'July-Sep',
            temperature: '3°C',
          ),
        ),
      ],
    )
        : isTablate?
        Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomTreks(
                    onTap: () {
                      Get.to(() => const K2BasecampTrekScreen());
                    },
                    title: "K2 Basecamp Trek",
                    restrictedText: "Restricted",
                    onTapRestricted: () {},
                    difficultText: 'Difficult',
                    onTapDifficult: () {},
                    image: const AssetImage('assets/images/102849000b42d650914852507899192a.jpg'),
                    elevation: '5000 m',
                    duration: '15 days',
                    season: 'July-Sep',
                    temperature: '-12°C',
                  ),
                ),
                SizedBox(width: Get.width * 0.03),
                Expanded(
                  child: CustomTreks(
                    onTap: () {
                      Get.to(() => const GondoGoroScreen());
                    },
                    title: "Gondogoro",
                    restrictedText: "Restricted",
                    onTapRestricted: () {},
                    difficultText: 'Difficult',
                    onTapDifficult: () {},
                    image: const AssetImage('assets/images/rrrrrrrr.jpg'),
                    elevation: '5585 m',
                    duration: '15 days',
                    season: 'July-Aug',
                    temperature: '-7°C',
                  ),
                ),

              ],
            ),
            SizedBox(height: Get.height * 0.035),
            Row(
              children: [
                SizedBox(
                  width: Get.size.width*0.46,
                  child: CustomTreks(
                    onTap: () {
                      Get.to(() => const SnowLakeTrekScreen());
                    },
                    title: "Snow Lake Trek",
                    restrictedText: "Restricted",
                    onTapRestricted: () {},
                    difficultText: 'Difficult',
                    onTapDifficult: () {},
                    image: const AssetImage('assets/images/Rectangle_112_(4).png'),
                    elevation: '5151 m',
                    duration: '14-15 days',
                    season: 'July-Sep',
                    temperature: '3°C',
                  ),
                ),
              ],
            )
          ],
        )
        :Column(
      children: [
        CustomTreks(
          onTap: () {
            Get.to(() => const K2BasecampTrekScreen());
          },
          title: "K2 Basecamp Trek",
          restrictedText: "Restricted",
          onTapRestricted: () {},
          difficultText: 'Difficult',
          onTapDifficult: () {},
          image: const AssetImage('assets/images/102849000b42d650914852507899192a.jpg'),
          elevation: '5000 m',
          duration: '15 days',
          season: 'July-Sep',
          temperature: '-12°C',
        ),
        SizedBox(height: Get.height * 0.05),
        CustomTreks(
          onTap: () {
            Get.to(() => const GondoGoroScreen());
          },
          title: "Gondogoro",
          restrictedText: "Restricted",
          onTapRestricted: () {},
          difficultText: 'Difficult',
          onTapDifficult: () {},
          image: const AssetImage('assets/images/rrrrrrrr.jpg'),
          elevation: '5585 m',
          duration: '15 days',
          season: 'July-Aug',
          temperature: '-7°C',
        ),
        SizedBox(height: Get.height * 0.05),
        CustomTreks(
          onTap: () {
            Get.to(() => const SnowLakeTrekScreen());
          },
          title: "Snow Lake Trek",
          restrictedText: "Restricted",
          onTapRestricted: () {},
          difficultText: 'Difficult',
          onTapDifficult: () {},
          image: const AssetImage('assets/images/Rectangle_112_(4).png'),
          elevation: '5151 m',
          duration: '14-15 days',
          season: 'July-Sep',
          temperature: '3°C',
        ),
      ],
    );
  }
}

