import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_challenge_day_1/days/day2/constants.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackgroundColor,
      body: Row(
        children: [
          myDrawer,
          Expanded(
              flex: 2,
              child: ListView(
                padding: const EdgeInsets.only(
                  left: 40,
                  right: 20,
                  top: 152,
                ),
                children: [
                  topSection,
                  const SizedBox(
                    height: 80,
                  ),
                  midSection,
                  const SizedBox(
                    height: 80,
                  ),
                  lastSection
                ],
              )),
          Expanded(flex: 1, child: rightDesktopContainer),
        ],
      ),
    );
  }
}
