import 'package:flutter/material.dart';
import 'package:ui_challenge_day_1/days/models/product.dart';

class Shop extends ChangeNotifier {
  // list of products
  final List<Product> _productList = [
    // product 1
    Product(
      name: 'Levis T-Shirt', 
      tag: 'T-Shirt', 
      price: 20.00, 
      imagePath: 'lib/days/images/product1.png'
    ),
    // product 2
    Product(
      name: 'Adidas Original', 
      tag: 'shoes', 
      price: 300.00, 
      imagePath: 'lib/days/images/product2.png'
    ),
    // product 3
    Product(
      name: 'Levis Jeans', 
      tag: 'Jeans', 
      price: 40.00, 
      imagePath: 'lib/days/images/Ladies Jeans - 809x1279.png'
    ),
    // product 4
    Product(
      name: 'Levis Jacket', 
      tag: 'Jacket', 
      price: 80.00, 
      imagePath: 'lib/days/images/Jacket - 800x1200.png'
    ),
    // product 5
    Product(
      name: 'Stylish T-Shirt', 
      tag: 'T-Shirt', 
      price: 20.00, 
      imagePath: 'lib/days/images/Men Stylish Shirt.png'
    ),
    // product 6
    Product(
      name: 'Ada Dress', 
      tag: 'Dress', 
      price: 350.00, 
      imagePath: 'lib/days/images/Girl Dress - 1250x1773.png'
    ),
  ];
  // get list of product
  List<Product> get productList => _productList;
}

