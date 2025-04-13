import 'package:flutter/material.dart';
import 'package:trail/widgets/custom_container.dart';
import 'package:trail/widgets/custom_text.dart';

import 'custom_responses.dart';

class CustomTreks extends StatelessWidget {
  final String difficultText;
  final void Function()? onTapDifficult;
  final String restrictedText;
  final void Function()? onTapRestricted;
  final void Function()? onTap;
  final String title;
  final ImageProvider<Object> image;
  final String elevation;
  final String duration;
  final String season;
  final String temperature;

  const CustomTreks({
    super.key,
    required this.title,
    required this.difficultText,
    required this.onTapRestricted,
    this.onTap,
    required this.restrictedText,
    required this.onTapDifficult,
    required this.image,
    required this.elevation,
    required this.duration,
    required this.season,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    // Screen size detection
    final bool isLittleMobile = Responsive.isLittleMobile(context);
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: onTap,
      child: Card(
        color: const Color(0xffe6e9ed),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Bar Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  // Status Buttons Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Restricted Button
                          _buildActionButton(
                            isDesktop: isDesktop,
                            text: restrictedText,
                            onTap: onTapRestricted,
                          ),
                          const SizedBox(width: 10),
                          // Difficult Button
                          _buildActionButton(
                            isDesktop: isDesktop,
                            text: difficultText,
                            onTap: onTapDifficult,
                          ),
                        ],
                      ),
                      // Circular Icon
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.shade300, width: 1),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/Vector_8.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  // Title
                  FittedBox(
                    child: CustomText(
                      text: title,
                      fontSize: isDesktop ? 34 : (isTablet ? 30 : 25),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            // Image Section with Temperature Tag
            Stack(
              children: [
                CustomContainer(
                  height: isDesktop ? 260 : 240,
                  width: screenWidth,
                  image: DecorationImage(image: image, fit: BoxFit.fill),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      temperature,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Details Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomContainer(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: _buildInfoTile('Elevation', elevation, isLittleMobile, isMobile, isTablet,isDesktop)),
                    Flexible(child: _buildInfoTile('Duration', duration, isLittleMobile, isMobile, isTablet,isDesktop)),
                    Flexible(child: _buildInfoTile('Season', season, isLittleMobile, isMobile, isTablet,isDesktop)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
  Widget _buildInfoTile(
      String title, String value, bool isLittleMobile, bool isMobile, bool isTablet,isDesktop) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          fontSize: isDesktop
              ? 20
              : isMobile? 18:isTablet
              ? 18
              : isLittleMobile
              ? 15
              : 18,
          color: Colors.grey.shade600,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        const SizedBox(height: 4),
        CustomText(
          text: value,
          fontSize: isDesktop
              ? 20
              : isMobile? 18:isTablet
              ? 18
              : isLittleMobile
              ? 15
              : 18,
          color: Colors.black,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }
  // Helper Method for Action Buttons
  Widget _buildActionButton({required String text, required VoidCallback? onTap,isDesktop}) {
    return MaterialButton(
      height: isDesktop?35:30,
      onPressed: onTap,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      child: CustomText(
        text: text,
        fontSize: 14,
        color: Colors.black,
      ),
    );
  }
}
