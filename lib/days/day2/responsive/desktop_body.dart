import 'package:flutter/material.dart';


class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade700,
      appBar: AppBar(
        title: const Text('Desktop Body'),
      ),
    );
  }
}