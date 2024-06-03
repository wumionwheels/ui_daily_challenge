import 'package:flutter/material.dart';
import 'package:ui_challenge_day_1/days/components/day2_drawer_tile.dart';


class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('Mobile Body'),
      ),
      drawer: Drawer(
        width: 272,
        backgroundColor: Theme.of(context).colorScheme.primary,
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
                        child: Text(
                          'BASIC',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
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
                    padding: const EdgeInsets.all(32),
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
                    child: Text(
                      'Upgrade to Pro',
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                        fontFamily: 'OPTIVenus',
                        wordSpacing: 2
                      ),
                    ),
              )
            ],
          ),
        ),
      ),

    );
  }
}