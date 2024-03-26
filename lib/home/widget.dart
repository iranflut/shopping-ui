import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_tut/data/model.dart';
import 'package:flutter_ui_tut/details/details_page.dart';

class GridSample extends StatelessWidget {
  const GridSample({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => DetailsPage(product: product),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: const EdgeInsets.all(16),
                  child:
                      Hero(tag: product.id, child: Image.asset(product.pic))),
            ),
            const SizedBox(height: 8),
            Text(
              product.title,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(product.price),
          ],
        ),
      ),
    );
  }
}
