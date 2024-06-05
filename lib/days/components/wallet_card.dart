import 'dart:ui';

import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final String backgroundImage;
  final String logoImage;
  final String amount;
  final String cardNumber;
  final String expiryDate;
  final String hiddenCode;
  final Color backgroundColor;
  final Color textColor;
  const WalletCard({
    super.key, 
    required this.backgroundImage, 
    required this.logoImage, 
    required this.amount, 
    required this.cardNumber, 
    required this.expiryDate, 
    required this.hiddenCode, 
    required this.backgroundColor, 
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          alignment: Alignment.bottomLeft,
          height: 224,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            image: DecorationImage(
              image: AssetImage(backgroundImage),
            ),
            color: backgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                logoImage,
                width: 28,
                height: 28,
              ),
              const SizedBox(height: 24),
              Text(
                amount,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'OPTIVenus',
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                cardNumber,
                style: TextStyle(
                  color: textColor,
                  fontFamily: 'OPTIVenus',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    expiryDate,
                    style: TextStyle(color: textColor),
                  ),
                  const SizedBox(width: 24),
                  Text(
                    hiddenCode,
                    style: TextStyle(color: textColor),
                  ),
                ],
              ),
            ],
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.vertical(bottom: Radius.circular(32)),
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
      ],
    );
  }
  }
