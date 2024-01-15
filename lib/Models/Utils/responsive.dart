import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    required Key key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design
  // This isMobile, isTablet, isDesktop help us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 765;

  static bool isSmallTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 920 &&
          MediaQuery.of(context).size.width >= 766;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1025 &&
          MediaQuery.of(context).size.width >= 920;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1026;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return desktop;
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 650) {
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