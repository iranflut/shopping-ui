import 'package:flutter/material.dart';

import '../data/model.dart';

class DetailInfo extends StatelessWidget {
  const DetailInfo({
    super.key,
    required this.size,
    required this.product,
  });

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.3),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.1,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Color',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.black),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                ColorDot(
                  color: Colors.red,
                  isSelected: true,
                ),
                ColorDot(
                  color: Colors.blue,
                  isSelected: false,
                ),
                ColorDot(
                  color: Colors.black,
                  isSelected: false,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              product.description,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                height: 1.5,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(14),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: product.color)),
                    ),
                    onPressed: () {},
                    child: Image.asset(
                      'assets/icons/shopping-cart.png',
                      color: product.color,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                      child: SizedBox(
                    height: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: product.color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('But Now')),
                  ))
                ],
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

class TitleTile extends StatelessWidget {
  const TitleTile({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: 'Price\n',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                ),
                TextSpan(
                    text: '\$${product.price}',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Colors.white,
                        )),
              ])),
              const SizedBox(width: 20),
              Expanded(
                  child:
                      Hero(tag: product.id, child: Image.asset(product.pic))),
            ],
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final bool isSelected;
  final Color color;
  const ColorDot({
    super.key,
    required this.isSelected,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: isSelected ? color : Colors.transparent, width: 1),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
