import 'package:flutter/animation.dart';
import 'package:women_bags/models/products.dart';

class ProductList{
  List<Product> products = [
    Product(
        id: 1,
        title: "Office Code",
        url: "assets/images/bag_1.png",
        color: const Color(0xFF3D82AE),
        price: 230
    ),
    Product(
        id: 2,
        title: "Belt Bag",
        url: "assets/images/bag_2.png",
        color: const Color(0xFFD3A984),
        price: 345
    ),  Product(
        id: 3,
        title: "Hang top",
        url: "assets/images/bag_3.png",
        color: const Color(0xFF989493),
        price: 230
    ),  Product(
        id: 4,
        title: "Office Code",
        url: "assets/images/bag_4.png",
        color: const Color(0xFFE6B398),
        price: 230
    ),  Product(
        id: 5,
        title: "Office Code",
        url: "assets/images/bag_5.png",
        color: const Color(0xFFFB7883),
        price: 230
    ),

    Product(
        id: 6,
        title: "Office Code",
        url: "assets/images/bag_6.png",
        color: const Color(0xFF989493),
        price: 230
    ),
  ];
}