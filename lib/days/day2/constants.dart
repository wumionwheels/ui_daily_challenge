import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_challenge_day_1/days/components/day2_drawer_tile.dart';
import 'package:ui_challenge_day_1/days/models/currency.dart';

var myDefaultBackgroundColor = Colors.grey.shade100;

var myAppBar = AppBar(
  actions: [
    IconButton(
        onPressed: () {},
        icon: const Icon(
          Iconsax.search_normal,
          size: 24,
        )),
    const SizedBox(
      width: 12,
    ),
    IconButton(
        onPressed: () {},
        icon: const Icon(
          Iconsax.notification,
          size: 24,
        )),
    const SizedBox(
      width: 12,
    ),
    Image.asset(
      'lib/days/images/profile.png',
      height: 32,
      width: 32,
    ),
    const SizedBox(
      width: 16,
    ),
  ],
);

var myTabBar = AppBar(
  shape: const BorderDirectional(
      end: BorderSide(color: Color.fromRGBO(227, 229, 232, 1), width: 1)),
);

var myDrawer = ClipRRect(
  borderRadius: BorderRadius.zero,
  child: Drawer(
    shape: const BorderDirectional(
      end: BorderSide(color: Color.fromRGBO(227, 229, 232, 1), width: 1),
    ),
    width: 272,
    backgroundColor: Colors.white,
    child: Padding(
      padding: const EdgeInsets.only(
        left: 40.0,
        top: 40,
        bottom: 52,
        right: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'lib/days/images/logo.png',
                width: 28,
                height: 28,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                'CHEQUE',
                style: TextStyle(
                    fontFamily: 'OPTIVenus',
                    fontSize: 16,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 12,
              ),
              Container(
                padding:
                    const EdgeInsets.only(top: 2, bottom: 2, left: 4, right: 4),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(248, 171, 138, 1),
                    borderRadius: BorderRadius.circular(4)),
                child: const Text(
                  'BASIC',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          const Day2DrawerTile(),
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

var rightDesktopContainer = Container(
  color: Colors.white,
  child: Padding(
    padding: const EdgeInsets.all(40),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.search_normal,
                  size: 24,
                )),
            const SizedBox(
              width: 12,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.notification,
                  size: 24,
                )),
            const SizedBox(
              width: 12,
            ),
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
);

var rightMobileContainer = Container(
  width: 361,
  color: Colors.white,
  child: const Padding(
    padding: EdgeInsets.all(40),
    child: Column(
      children: [],
    ),
  ),
);

var topSection = Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Wallet Balance',
          style: TextStyle(
              fontFamily: 'OPTIVenus',
              fontSize: 16,
              color: Colors.grey.shade800,
              fontWeight: FontWeight.bold),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Add new wallet',
              style: TextStyle(color: Colors.grey.shade800),
            ),
            const SizedBox(
              width: 12,
            ),
            Icon(Iconsax.wallet_add_1)
          ],
        )
      ],
    ),
    const SizedBox(
      height: 20,
    ),
    Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            FractionallySizedBox(
              widthFactor: 1,
              child: Container(
                  padding: const EdgeInsets.all(24),
                  alignment: Alignment.bottomLeft,
                  width: 361,
                  height: 224,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                    image: DecorationImage(
                      image: AssetImage('lib/days/images/circle lines 1.png'),
                    ),
                    color: Color.fromRGBO(41, 41, 61, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'lib/days/images/logo on card 1.png',
                        width: 28,
                        height: 28,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        formatCurrency(40342),
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'OPTIVenus',
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        '4589  8345  5356  9053',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OPTIVenus',
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '10/20',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Text(
                            '***',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            FractionallySizedBox(
              widthFactor: 1,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(32)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    height: 104,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            FractionallySizedBox(
              widthFactor: 1,
              child: Container(
                  padding: const EdgeInsets.all(24),
                  alignment: Alignment.bottomLeft,
                  width: 361,
                  height: 224,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                    image: DecorationImage(
                      image: AssetImage('lib/days/images/circle lines 2.png'),
                    ),
                    color: Color.fromRGBO(248, 235, 233, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'lib/days/images/logo on card 2.png',
                        width: 28,
                        height: 28,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        formatCurrency(40342),
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'OPTIVenus',
                            color: Color.fromRGBO(153, 114, 102, 1),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        '4589  8345  5356  9053',
                        style: TextStyle(
                            color: Color.fromRGBO(153, 114, 102, 1),
                            fontFamily: 'OPTIVenus',
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Row(
                        children: [
                          Text(
                            '10/20',
                            style: TextStyle(
                              color: Color.fromRGBO(153, 114, 102, 1),
                            ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Text(
                            '***',
                            style: TextStyle(
                              color: Color.fromRGBO(153, 114, 102, 1),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            FractionallySizedBox(
              widthFactor: 1,
              child: ClipRRect(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(32)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    height: 104,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    )
  ],
);

var midSection = Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Upcoming payments',
          style: TextStyle(
              fontFamily: 'OPTIVenus',
              fontSize: 16,
              color: Colors.grey.shade800,
              fontWeight: FontWeight.bold),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'View all',
              style: TextStyle(color: Colors.grey.shade800),
            ),
            const SizedBox(
              width: 12,
            ),
            const Icon(Iconsax.arrow_right_1)
          ],
        )
      ],
    ),
    const SizedBox(
      height: 20,
    ),
    FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        height: 80,
        child: Row(
          children: [
            Image.asset(
              'lib/days/images/image 1.png',
              width: 80,
              height: 80,
            ),
            const SizedBox(
              width: 20,
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'From OverlayHq',
                        style: TextStyle(
                            color: Color.fromRGBO(93, 100, 111, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        '+ 10,000',
                        style: TextStyle(
                            color: Color.fromRGBO(93, 100, 111, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jan 13th, 2023',
                        style: TextStyle(
                          color: Color.fromRGBO(151, 158, 168, 1),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Due in 3 days',
                            style: TextStyle(
                              color: Color.fromRGBO(151, 158, 168, 1),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Iconsax.info_circle,
                            size: 16,
                            color: Color.fromRGBO(151, 158, 168, 1),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
    const SizedBox(
      height: 20,
    ),
    FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        height: 80,
        child: Row(
          children: [
            Image.asset(
              'lib/days/images/image 2.png',
              width: 80,
              height: 80,
            ),
            const SizedBox(
              width: 20,
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'From Binance',
                        style: TextStyle(
                            color: Color.fromRGBO(93, 100, 111, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        '+ 8,000',
                        style: TextStyle(
                            color: Color.fromRGBO(93, 100, 111, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jan 13th, 2023',
                        style: TextStyle(
                          color: Color.fromRGBO(151, 158, 168, 1),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Due in 3 days',
                            style: TextStyle(
                              color: Color.fromRGBO(151, 158, 168, 1),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Iconsax.info_circle,
                            size: 16,
                            color: Color.fromRGBO(151, 158, 168, 1),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  ],
);

var lastSection = Stack(alignment: Alignment.centerRight, children: [
  FractionallySizedBox(
    widthFactor: 2,
    child: Container(
      padding: const EdgeInsets.all(28),
      alignment: Alignment.topLeft,
      width: 190,
      height: 254,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(32)),
        image: DecorationImage(
          image: AssetImage('lib/days/images/lines 2.png'),
        ),
        color: 
            Color(0xFFF8AB8A),
        ),
      child: const Text(
        'Experience true digital banking experience',
        maxLines: 2,
        textAlign: TextAlign.start,
        overflow: TextOverflow.visible,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: 'OPTIVenus',
          letterSpacing: 0.5,
        ),
      ),
    ),
  ),
  FractionallySizedBox(
    widthFactor: 1,
    child: Container(
      padding: const EdgeInsets.all(28),
      alignment: Alignment.topLeft,
      width: 190,
      height: 254,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(32)),
        image: DecorationImage(
          image: AssetImage('lib/days/images/lines 2.png'),
        ),
        color: 
            Color(0xFFF8DA8A),
        ),
      
    ),
  ),
  
]);
