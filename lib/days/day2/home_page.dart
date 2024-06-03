import 'package:flutter/material.dart';
import 'package:ui_challenge_day_1/days/day2/responsive/desktop_body.dart';
import 'package:ui_challenge_day_1/days/day2/responsive/mobile_body.dart';
import 'package:ui_challenge_day_1/days/day2/responsive/responsive_layout.dart';
import 'package:ui_challenge_day_1/days/day2/responsive/tablet_body.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        desktopBody: MyDesktopBody(),
        tabletBody: MyTabletBody(),
        mobileBody: MyMobileBody(),
      ),
    );
  }
}