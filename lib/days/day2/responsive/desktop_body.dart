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
          Expanded(child: Column()),
          Container(
            color: Theme.of(context).colorScheme.primary,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                            onPressed: () {}, 
                            icon: const Icon(
                              Iconsax.search_normal,
                              size: 24,
                            )
                          ),
                          const SizedBox(width: 12,),
                          IconButton(
                            onPressed: () {}, 
                            icon: const Icon(
                              Iconsax.notification,
                              size: 24,
                            )
                          ),
                          const SizedBox(width: 12,),
                          Image.asset(
                            'lib/days/images/profile.png',
                            height: 32,
                            width: 32,
                          ),
                    ],
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}