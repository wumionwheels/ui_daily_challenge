import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class MyListTile extends StatelessWidget {
  final double? containerHeight;
  final double? imageWidth;
  final double? imageHeight;
  final String headerText;
  final String amount;
  final String subText;
  final List<Widget> children;
  final String image;

  const MyListTile({
    super.key,
    required this.containerHeight, 
    required this.imageWidth, 
    required this.imageHeight, 
    required this.headerText, 
    required this.amount, 
    required this.subText, 
    required this.children, 
    required this.image 
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Container(
        height: containerHeight,
        child: Row(
          children: [
            Image.asset(
              image,
              width: imageWidth,
              height: imageHeight,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        headerText,
                        style: const TextStyle(
                            color: Color.fromRGBO(93, 100, 111, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                        amount,
                        style: const TextStyle(
                            color: Color.fromRGBO(93, 100, 111, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        subText,
                        style: const TextStyle(
                          color: Color.fromRGBO(151, 158, 168, 1),
                        ),
                      ),
                      Row(
                        children: children, 
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}