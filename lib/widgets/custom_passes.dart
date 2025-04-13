import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:trail/widgets/custom_container.dart';
import 'package:trail/widgets/custom_responses.dart';
import 'package:trail/widgets/custom_text.dart';

class CustomPasses extends StatelessWidget {
  final String name;
  final ImageProvider<Object> image;
  final String elevation;
  final String duration;
  final String season;
  final bool isOpen;
  final VoidCallback? onTap;

  const CustomPasses({
    super.key,
    required this.name,
    required this.image,
    required this.elevation,
    required this.duration,
    required this.season,
    required this.isOpen,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Screen size detection
    final bool isLittleMobile = Responsive.isLittleMobile(context);
    final bool isMobile = Responsive.isMobile(context);
    final bool isTablet = Responsive.isTablet(context);
    final bool isDesktop = Responsive.isDesktop(context);

    final double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      child: CustomContainer(
        conColor: const Color(0xffececf4),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(0, 20),
            blurRadius: 5,
            spreadRadius: -5,
          ),
        ],
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
                  // Status Bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomContainer(
                        alignment: Alignment.center,
                        height: isDesktop?35:30,

                        width: 90,
                        conColor: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        child: CustomText(
                          text: isOpen ? 'Open' : 'Closed',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Icon(
                        Icons.circle,
                        color: isOpen ? Colors.green : Colors.red,
                        size: 30,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  // Title
                  CustomText(
                    text: name,
                    fontSize: isDesktop ? 34 : (isTablet ? 30: 25),
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            // Image Section
            CustomContainer(
              height: isDesktop ? 260 : 240,
              width: screenWidth,
              image: DecorationImage(
                image: image,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 10),
            // Details Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: _buildInfoTile('Elevation', elevation, isLittleMobile, isMobile, isTablet,isDesktop)),
                  Flexible(child: _buildInfoTile('Duration', duration, isLittleMobile, isMobile, isTablet,isDesktop)),
                  Flexible(child: _buildInfoTile('Season', season, isLittleMobile, isMobile, isTablet,isDesktop)),
                ],
              ),
            ),
            const SizedBox(height: 16),
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
          fontSize:isDesktop
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
}