import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_challenge_day_1/days/day1/models/shop.dart';
import 'package:ui_challenge_day_1/days/themes/my_lightmode.dart';
import 'package:ui_challenge_day_1/days/day2/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Shop(),
      builder: (context, child) =>
      MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Dayly UI Challenge',
    theme: lightMode,
    home: const HomePage()
      )
    );
  


        
  }

}

