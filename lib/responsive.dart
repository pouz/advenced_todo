import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design
  static double maxDesktopWidth = 1300;
  static double maxMobileWidth = 700;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < maxMobileWidth;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < maxDesktopWidth &&
      MediaQuery.of(context).size.width >= maxMobileWidth;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= maxDesktopWidth;

  static double getWindowWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 900 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= maxDesktopWidth) {
          return desktop;
        }
        // If width it less then 900 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= maxMobileWidth) {
          return tablet;
        }
        // Or less then that we called it mobile
        else {
          return mobile;
        }
      },
    );
  }
}
