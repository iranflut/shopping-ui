import 'package:flutter/material.dart';
import 'package:flutter_ui_tut/data/model.dart';
import 'package:flutter_ui_tut/details/widgets.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: Stack(
              children: [
                DetailInfo(size: size, product: product),
                TitleTile(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
