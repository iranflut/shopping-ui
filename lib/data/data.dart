import 'package:flutter/material.dart';
import 'package:flutter_ui_tut/data/model.dart';

const String description =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec mollis sapien. Maecenas felis orci, porta vel neque nec, volutpat ullamcorper neque. Nullam dictum a neque sit amet tincidunt. Vivamus ultrices, metus eu iaculis porta, odio ligula sollicitudin magna, vel sagittis neque urna sed mauris. In nisl mi, auctor vel placerat a, mattis non risus. Morbi feugiat nunc congue sapien accumsan, non iaculis orci tempor. Aliquam vulputate, nisl sagittis mattis imperdiet, nisi risus volutpat felis, sit amet egestas nisi mi vitae tellus. Donec laoreet eros ac sollicitudin mattis. Praesent eleifend nisi sapien, in rutrum odio volutpat eu. Sed a nibh ex. Morbi porta velit sed risus luctus, ac lacinia turpis pretium. Nunc ex justo, consequat in bibendum vel, congue sit amet erat. Suspendisse molestie iaculis maximus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque sollicitudin elementum sem id scelerisque. Integer et finibus ante.';
List<String> categories = ['mobile', 'laptop', 'camera', 'smart watch'];
List<Product> products = <Product>[
  Product(
      id: 1,
      title: 'Samsung',
      price: '2000',
      description: description,
      color: Colors.grey,
      pic: 'assets/products/samsung.webp'),
  Product(
      id: 2,
      title: 'Samsung Laptop',
      price: '2000',
      description: description,
      color: Colors.amber,
      pic: 'assets/products/samsung_laptop.png'),
  Product(
      id: 3,
      title: 'IphoneX',
      price: '1900',
      description: description,
      color: Colors.grey,
      pic: 'assets/products/iphone_x.png'),
  Product(
      id: 4,
      title: 'Macbook pro',
      price: '1950',
      description: description,
      color: Colors.blueGrey,
      pic: 'assets/products/Macbook_pro.webp'),
  Product(
      id: 5,
      title: 'Mackbook air',
      price: '2000',
      description: description,
      color: Colors.cyan,
      pic: 'assets/products/Macbook_air.png'),
  Product(
      id: 6,
      title: 'Xiaomi',
      price: '2000',
      description: description,
      color: Colors.red,
      pic: 'assets/products/xiaomi.png'),
  Product(
      id: 7,
      title: 'Mackbook air',
      price: '2000',
      description: description,
      color: Colors.cyan,
      pic: 'assets/products/Macbook_air.png'),
  Product(
      id: 8,
      title: 'Xiaomi',
      price: '2000',
      description: description,
      color: Colors.red,
      pic: 'assets/products/xiaomi.png'),
];
