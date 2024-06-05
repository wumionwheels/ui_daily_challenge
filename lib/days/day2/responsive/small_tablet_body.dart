import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_challenge_day_1/days/day2/constants.dart';


class SmallTabletBody extends StatelessWidget {
  const SmallTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: ListView(
        padding: EdgeInsets.all(32),
        children: [
          topSection,
          const SizedBox(height: 80,),
          upcomingPayment,
          const SizedBox(height: 80,),
          lastSection,
          const SizedBox(height: 80,),
          rightMobileContainer
        ],
      ),
    );
  }
}