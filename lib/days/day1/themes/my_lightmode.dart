import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Colors.white,
    onPrimary: Colors.grey.shade800,
    inversePrimary: Colors.grey.shade900,
    secondary: const Color(0xFF8C929E),
    onSecondary: Colors.white,
    surface: Colors.grey.shade100,
    onSurface: Colors.grey.shade700, 
    error: Colors.red.shade600,
    onError: Colors.red.shade100,
  )
);
