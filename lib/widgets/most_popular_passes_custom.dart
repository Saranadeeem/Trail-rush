import '../utils/library.dart';

class MostPopularPassesCustom extends StatelessWidget {
  final bool isWideScreen;
  final bool isTablate;
  const MostPopularPassesCustom({super.key, required this.isWideScreen, required this.isTablate});

  @override
  Widget build(BuildContext context) {
    return isWideScreen
        ? Row(
      children: [
        Expanded(
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
        SizedBox(width: Get.width * 0.04),
        Expanded(
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
        SizedBox(width: Get.width * 0.04),
        Expanded(
          child: CustomPasses(
            name: "Shandur Pass",
            image: const AssetImage('assets/images/3e526c1158.jpg'),
            elevation: '3,720 m',
            duration: 'Any Length',
            season: 'June-Nov',
            isOpen: true,
            onTap: () {
              Get.to(() => const ShandurPassScreen());
            },
          ),
        ),
      ],
    )
        : isTablate
        ? Column(
          children: [
            Row(
                  children: [
            Expanded(
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
            SizedBox(width: Get.width * 0.03),
            Expanded(
              child: CustomPasses(
                name: "Khunjerab Pass",
                image: const AssetImage('assets/images/1730fcd271.jpg'),
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
            SizedBox(height: Get.height * 0.035),
            Row(
              children: [
                SizedBox(
                  width: Get.size.width*0.46,
                  child: CustomPasses(
                    name: "Shandur Pass",
                    image: const AssetImage('assets/images/3e526c1158.jpg'),
                    elevation: '4,173 m',
                    duration: 'Any Length',
                    season: 'June-Nov',
                    isOpen: true,
                    onTap: () {
                      Get.to(() => const ShandurPassScreen());
                    },
                  ),
                ),
              ],
            ),
          ],
        )
        : Column(
      children: [
        CustomPasses(
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
        SizedBox(height: Get.height * 0.05),
        CustomPasses(
          name: "Khunjerab Pass",
          image: const AssetImage('assets/images/1730fcd271.jpg'),
          elevation: '4,173 m',
          duration: 'Any Length',
          season: 'June-Nov',
          isOpen: true,
          onTap: () {
            Get.to(() => const KhunjerabPassScreen());
          },
        ),
        SizedBox(height: Get.height * 0.05),
        CustomPasses(
          name: "Shandur Pass",
          image: const AssetImage('assets/images/3e526c1158.jpg'),
          elevation: '4,173 m',
          duration: 'Any Length',
          season: 'June-Nov',
          isOpen: true,
          onTap: () {
            Get.to(() => const ShandurPassScreen());
          },
        ),
      ],
    );
  }
}