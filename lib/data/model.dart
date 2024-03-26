import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final String price;
  final String description;
  final Color color;
  final String pic;
  int number;
  bool isFavorit;

  Product({
    required this.id,
    required this.pic,
    required this.title,
    required this.price,
    required this.description,
    required this.color,
    this.number = 1,
    this.isFavorit = false,
  });
}
