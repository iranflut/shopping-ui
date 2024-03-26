import 'package:flutter/material.dart';
import 'package:flutter_ui_tut/data/model.dart';
import 'package:flutter_ui_tut/details/body.dart';

class DetailsPage extends StatelessWidget {
  final Product product;
  const DetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8),
        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset('assets/icons/back.png')),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset('assets/icons/search.png')),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset('assets/icons/shopping-cart.png')),
        ),
      ],
    );
  }
}
