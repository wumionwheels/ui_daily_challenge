import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_challenge_day_1/days/day2/constants.dart';


class BigTabletBody extends StatelessWidget {
  const BigTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: ListView(
              padding: EdgeInsets.all(32),
              children: [
                topSection,
                const SizedBox(height: 80,),
                upcomingPayment,
                const SizedBox(height: 80,),
                lastSection
              ],
            )
          ),
          ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 416,
            maxWidth: 544
          ),
          child: rightTabletContainer,
        ),
        ],
      ),
    );
  }
}