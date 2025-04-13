import 'package:flutter/material.dart';

class Responsive {
  static bool isLittleMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 340; // Adjusted to avoid gaps.

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width >= 340 &&
          MediaQuery.of(context).size.width < 600; // Covers standard mobile range.

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
          MediaQuery.of(context).size.width < 1050; // Adjusted to align with desktop min width.

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1050; // Covers all desktop and larger.

  static bool isIphone(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width >= 320 && size.width <= 430 && size.height <= 896;
  }
}
double getResponsiveFontSize(BuildContext context,
    {double desktop = 32, double tablet = 24, double mobile = 20, double littleMobile = 18}) {
  if (Responsive.isDesktop(context)) return desktop;
  if (Responsive.isTablet(context)) return tablet;
  if (Responsive.isLittleMobile(context)) return littleMobile;
  return mobile;
}
