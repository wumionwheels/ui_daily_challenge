import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_challenge_day_1/days/components/day2_drawer_tile.dart';

var myDefaultBackgroundColor = Colors.grey.shade100;

var myAppBar = AppBar(
  actions: [
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
    const SizedBox(width: 16,),
  ],
);

var myTabBar = AppBar(
  shape: const BorderDirectional(
    end: BorderSide(
      color: Color.fromRGBO(227, 229, 232, 1),
      width: 1
    )
  ),
);


var myDrawer = ClipRRect(
  borderRadius: BorderRadius.zero,
  child: Drawer(
    
    shape: const BorderDirectional(
      end: BorderSide(
        color: Color.fromRGBO(227, 229, 232, 1),
        width: 1
      ),
    ),
    width: 272,
    backgroundColor: Colors.white,
    child: Padding(
      padding: const EdgeInsets.only(
        left: 40.0,
        top: 40,
        bottom: 52,
      ),
        child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'lib/days/images/logo.png', 
                          width: 28,
                          height: 28,
                        ),
                        const SizedBox(width: 12,),
                        const Text(
                            'CHEQUE',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        const SizedBox(width: 12,),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 2,
                            bottom: 2,
                            left: 4,
                            right: 4
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(248, 171, 138, 1),
                            borderRadius: BorderRadius.circular(4)
                          ),
                          child: const Text(
                            'BASIC',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 80,),
                    const Day2DrawerTile(),
                    
                  ],
                ),
                Container(
                      padding: const EdgeInsets.all(28),
                      alignment: Alignment.bottomLeft,
                      width: 190,
                      height: 140,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                        image: DecorationImage(
                          image: AssetImage('lib/days/images/lines.png'),
                        ),
                        gradient: LinearGradient(
                          colors: [
                          Color(0xFFF8AB8A),
                          Color(0xFFF8DA8A),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                      ),
                      child: const Text(
                        'Upgrade to Pro',
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'OPTIVenus',
                          letterSpacing: 0.5,
                        ),
                      ),
                )
              ],
            ),
          ),
        ),
);
