import 'package:flutter/material.dart';
import 'package:ui_challenge_day_1/days/components/day2_drawer_tile.dart';
import 'package:ui_challenge_day_1/days/day2/constants.dart';


class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer
    );
  }
}