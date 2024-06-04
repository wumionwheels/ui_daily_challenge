import 'package:flutter/material.dart';
import 'package:ui_challenge_day_1/days/models/product.dart';


class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {

    return FractionallySizedBox(
      child: Container(
        margin: const EdgeInsets.only(
          right: 12,
          bottom: 12
        ),
        width: 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // product image
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).colorScheme.surface,
              ),
              child: Image.asset(
                product.imagePath,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
      
            // product name
            Text(
              product.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.tag,
                  style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
              ),
                ),
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
              ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}