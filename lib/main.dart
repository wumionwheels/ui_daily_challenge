import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_challenge_day_1/days/day1/models/shop.dart';
import 'package:ui_challenge_day_1/days/day1/pages/search_page.dart';
import 'package:ui_challenge_day_1/days/day1/themes/my_lightmode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Dayly UI Challenge',
    theme: lightMode,
    home: const SearchPage(),
        );
  }
}

