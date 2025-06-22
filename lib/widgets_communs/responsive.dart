import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? orientation;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    this.orientation,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > 600;
  static bool isLandscape(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.landscape;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final width = media.size.width;
    final appOrientation = media.orientation == Orientation.landscape;

    // Affichage paysage si disponible
    if (appOrientation && orientation != null) {
      return orientation!;
    } // Affichage tablette si largeur > 600
    else if (width > 600) {
      return tablet!;
    } else {// Par défaut : mobile
      return mobile;
    }
  }
}