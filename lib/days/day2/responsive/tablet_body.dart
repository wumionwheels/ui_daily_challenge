import 'package:flutter/material.dart';


class MyTabletBody extends StatelessWidget {
  const MyTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade500,
      appBar: AppBar(
        title: const Text('Tablet Body'),
      ),
    );
  }
}