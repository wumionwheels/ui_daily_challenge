import 'package:flutter/material.dart';
import 'package:ui_challenge_day_1/days/day2/responsive/dimensions.dart';


class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget smallTabletBody;
  final Widget bigTabletBody;
  final Widget desktopBody;

  const ResponsiveLayout({
    super.key, 
    required this.mobileBody, 
    required this.smallTabletBody,
    required this.bigTabletBody, 
    required this.desktopBody, 
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else if (constraints.maxWidth < smallTabletWidth) {
          return smallTabletBody;
        } else if (constraints.maxWidth < bigTabletWidth) {
          return bigTabletBody;
        } else {
          return desktopBody;
        }
      },
        
      
    );
  }
}