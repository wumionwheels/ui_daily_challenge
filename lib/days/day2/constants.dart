import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ui_challenge_day_1/days/components/day2_drawer_tile.dart';
import 'package:ui_challenge_day_1/days/components/my_list_tile.dart';
import 'package:ui_challenge_day_1/days/components/wallet_card.dart';
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
                  Color.fromRGBO(248, 171, 138, 1),
                  Color.fromRGBO(248, 218, 138, 1),
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
  width: 361,
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
        const SizedBox(height: 80,),
        contracts,
        const SizedBox(height: 80,),
        transactions
      ],
    ),
  ),
);


var rightTabletContainer = Container(
  width: 361,
  color: Colors.white,
  child:  Padding(
    padding: EdgeInsets.all(40),
    child: Column(
      children: [
        contracts,
        const SizedBox(height: 80,),
        transactions
      ],
    ),
  ),
);


var rightMobileContainer = Container(
  width: 361,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(32),
    color: Colors.white,
  ),
  child:  Padding(
    padding: EdgeInsets.all(40),
    child: Column(
      children: [
        contracts,
        const SizedBox(height: 80,),
        transactions
      ],
    ),
  ),
);

var topMobileSection = Column(
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
        FractionallySizedBox(
          widthFactor: 1.0,
          child: WalletCard(
            backgroundImage: 'lib/days/images/circle lines 1.png',
            logoImage: 'lib/days/images/logo on card 1.png',
            amount: formatCurrency(40342),
            cardNumber: '4589  8345  5356  9053',
            expiryDate: '10/20',
            hiddenCode: '***',
            backgroundColor: const Color.fromRGBO(41, 41, 61, 1),
            textColor: Colors.white,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        FractionallySizedBox(
          widthFactor: 1.0,
          child: WalletCard(
            backgroundImage: 'lib/days/images/circle lines 2.png',
            logoImage: 'lib/days/images/logo on card 2.png',
            amount: formatCurrency(930.23),
            cardNumber: '4589  8345  5356  9053',
            expiryDate: '10/20',
            hiddenCode: '***',
            backgroundColor: const Color.fromRGBO(248, 235, 233, 1),
            textColor: const Color.fromRGBO(153, 114, 102, 1),
          ),
        )
      ],
    )
  ],
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
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 343,
              maxWidth: 384
            ),
            child: WalletCard(
              backgroundImage: 'lib/days/images/circle lines 1.png',
              logoImage: 'lib/days/images/logo on card 1.png',
              amount: formatCurrency(40342),
              cardNumber: '4589  8345  5356  9053',
              expiryDate: '10/20',
              hiddenCode: '***',
              backgroundColor: const Color.fromRGBO(41, 41, 61, 1),
              textColor: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 343,
              maxWidth: 384
            ),
            child: WalletCard(
              backgroundImage: 'lib/days/images/circle lines 2.png',
              logoImage: 'lib/days/images/logo on card 2.png',
              amount: formatCurrency(923.21),
              cardNumber: '4589  8345  5356  9053',
              expiryDate: '10/20',
              hiddenCode: '***',
              backgroundColor: const Color.fromRGBO(248, 235, 233, 1),
              textColor: const Color.fromRGBO(153, 114, 102, 1),
            ),
          )
        ],
      ),
    )
  ],
);

var upcomingPayment = Column(
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
    const MyListTile(
      containerHeight: 80,
      image: 'lib/days/images/image 1.png',
      imageWidth: 80,
      imageHeight: 80,
      headerText: 'From OverlayHq',
      amount: '+ 10,000',
      subText: 'Jan 13th, 2023',
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
    const SizedBox( height: 20),
    const MyListTile(
      containerHeight: 80,
      image: 'lib/days/images/image 2.png',
      imageWidth: 80,
      imageHeight: 80,
      headerText: 'From Binance',
      amount: '+ 8,000',
      subText: 'Jan 30th, 2023',
      children: [
        Text(
          'Due in 20 days',
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
);

var lastSection = FractionallySizedBox(
  widthFactor: 1.0,
  child: Stack(alignment: Alignment.topRight, children: [
    FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        padding: const EdgeInsets.only(left: 40, top: 40, bottom: 40),
        alignment: Alignment.topLeft,
        height: 254,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(32), 
              bottomRight: Radius.circular(32),
              topLeft: Radius.circular(32),
              bottomLeft: Radius.circular(32),
          ),
          image: DecorationImage(
            image: AssetImage('lib/days/images/lines 2.png'),
          ),
          color: Color.fromRGBO(249, 212, 139, 1),
        ),
        child: ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 88,
              maxHeight: 174,
              minWidth: 200,
              maxWidth: 216
            ),
            child: Text(
              'Experience true digital banking experience',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800,
                fontFamily: 'OPTIVenus',
                letterSpacing: 0.5,
              ),
            )),
      ),
    ),
    FractionallySizedBox(
      widthFactor: 0.3,
      child: Container(
        padding: const EdgeInsets.all(28),
        alignment: Alignment.topLeft,
        width: 176,
        height: 254,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(32), 
              bottomRight: Radius.circular(32),
          ),
          image: DecorationImage(
            image: AssetImage('lib/days/images/lines 2.png'),
          ),
          color: Color.fromRGBO(252, 237, 207, 1),
        ),
      ),
    ),
    Padding(
      padding:
          const EdgeInsets.only(right: 36.0, top: 48, left: 300, bottom: 182),
      child: Image.asset(
        'lib/days/images/image 3.png',
        width: 24,
        height: 24,
      ),
    ),
    Padding(
      padding:
          const EdgeInsets.only(right: 136.0, top: 40, left: 216, bottom: 125),
      child: Image.asset(
        'lib/days/images/image 4.png',
        width: 88,
        height: 88,
      ),
    ),
    Padding(
      padding:
          const EdgeInsets.only(right: 136.0, top: 172, left: 216, bottom: 56),
      child: Image.asset(
        'lib/days/images/image 5.png',
        width: 24,
        height: 24,
      ),
    )
  ]),
);



var contracts = Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Contracts',
          style: TextStyle(
              fontFamily: 'OPTIVenus',
              fontSize: 16,
              color: Colors.grey.shade800,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
    const SizedBox(
      height: 20,
    ),
    const MyListTile(
      containerHeight: 80,
      image: 'lib/days/images/image 1.png',
      imageWidth: 80,
      imageHeight: 80,
      headerText: 'From OverlayHq',
      amount: '+ 10,000',
      subText: 'UI/UX Designer  Full time',
      children: [
        Text(
          'Monthly',
          style: TextStyle(
            color: Color.fromRGBO(151, 158, 168, 1),
          ),
        ),
      ],
    ),
    const SizedBox( height: 20),
    const MyListTile(
      containerHeight: 80,
      image: 'lib/days/images/image 2.png',
      imageWidth: 80,
      imageHeight: 80,
      headerText: 'From Binance',
      amount: '+ 8,000',
      subText: 'Visual Designer  Contract',
      children: [
        Text(
          'Weekly',
          style: TextStyle(
            color: Color.fromRGBO(151, 158, 168, 1),
          ),
        ),
      ],
    ),
    
  ],
);


var transactions = Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transactions',
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
      height: 40,
    ),
    MyListTile(
      containerHeight: 56,
      image: 'lib/days/images/image 6.png',
      imageWidth: 54,
      imageHeight: 54,
      headerText: 'From OverlayHq',
      amount: '+ 8,000',
      subText: 'Visual Designer  Contract',
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(233, 239, 252, 1)
          ),
          child: const Text(
            'RECEIVED',
            style: TextStyle(
              color: Color.fromRGBO(91, 139, 232, 1),
              fontSize: 12
            ),
          ),
        ),
      ],
    ),
    const SizedBox( height: 20),
    MyListTile(
      containerHeight: 56,
      image: 'lib/days/images/image 7.png',
      imageWidth: 54,
      imageHeight: 54,
      headerText: 'From Binance',
      amount: '+ 8,000',
      subText: 'Visual Designer  Contract',
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(233, 239, 252, 1)
          ),
          child: const Text(
            'RECEIVED',
            style: TextStyle(
              color: Color.fromRGBO(91, 139, 232, 1),
              fontSize: 12
            ),
          ),
        ),
      ],
    ),
    const SizedBox( height: 20),
    MyListTile(
      containerHeight: 56,
      image: 'lib/days/images/image 8.png',
      imageWidth: 54,
      imageHeight: 54,
      headerText: 'To Coinbase',
      amount: '+ 18,000',
      subText: 'Visual Designer  Contract',
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(245, 245, 245, 1)
          ),
          child: const Text(
            'WITHDRAWN',
            style: TextStyle(
              color: Color.fromRGBO(151, 158, 168, 1),
              fontSize: 12
            ),
          ),
        ),
      ],
    ),
    const SizedBox( height: 20),
    MyListTile(
      containerHeight: 56,
      image: 'lib/days/images/image 7.png',
      imageWidth: 54,
      imageHeight: 54,
      headerText: 'From Binance',
      amount: '+ 8,000',
      subText: 'Visual Designer  Contract',
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(233, 239, 252, 1)
          ),
          child: const Text(
            'RECEIVED',
            style: TextStyle(
              color: Color.fromRGBO(91, 139, 232, 1),
              fontSize: 12
            ),
          ),
        ),
      ],
    ),
    const SizedBox( height: 20),
    MyListTile(
      containerHeight: 56,
      image: 'lib/days/images/image 8.png',
      imageWidth: 54,
      imageHeight: 54,
      headerText: 'To Coinbase',
      amount: '+ 18,000',
      subText: 'Visual Designer  Contract',
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(245, 245, 245, 1)
          ),
          child: const Text(
            'WITHDRAWN',
            style: TextStyle(
              color: Color.fromRGBO(151, 158, 168, 1),
              fontSize: 12
            ),
          ),
        ),
      ],
    ),
  ],
);















