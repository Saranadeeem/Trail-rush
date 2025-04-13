import 'package:trail/utils/library.dart';

class TeamMemberCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String role;
  final String description1;
  final String description2;
  final bool isDesktop;

  const TeamMemberCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.role,
    required this.description1,
    this.description2 = '',
    this.isDesktop = false, // Ensure default value is provided
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Circular Image
        Container(
          height: isDesktop?250:150, // Adjust image size for desktop
          width: isDesktop?250:150, // Adjust image size for desktop,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 16),
        // Name
        CustomText(
          text: name,
          fontSize: isDesktop ? 30.9 : 23.65,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(height: 4),
        // Role
        CustomText(
          text: role,
          fontSize: isDesktop ? 27.75 : 19.71,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 4),
        // Descriptions
        CustomText(
          text: description1,
          fontSize: isDesktop ? 22.66 : 17.35,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.w700,
        ),
        if (description2.isNotEmpty)
          CustomText(
            text: description2,
            fontSize: isDesktop ? 22.66 : 17.35,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w700,
          ),
      ],
    );
  }
}