import 'package:flutter/material.dart';
import 'package:ui_challenge_day_1/days/day2/responsive/big_tablet_body.dart';
import 'package:ui_challenge_day_1/days/day2/responsive/desktop_body.dart';
import 'package:ui_challenge_day_1/days/day2/responsive/mobile_body.dart';
import 'package:ui_challenge_day_1/days/day2/responsive/responsive_layout.dart';
import 'package:ui_challenge_day_1/days/day2/responsive/small_tablet_body.dart';


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
        mobileBody: MyMobileBody(), 
        smallTabletBody: SmallTabletBody(), 
        bigTabletBody: BigTabletBody(),
        desktopBody: MyDesktopBody(),
        
      ),
    );
  }
}