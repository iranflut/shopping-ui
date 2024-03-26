import 'package:flutter/material.dart';
import 'package:flutter_ui_tut/data/data.dart';
import 'package:flutter_ui_tut/data/model.dart';
import 'package:flutter_ui_tut/home/widget.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBarWidget(),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                primary: false,
                physics: const BouncingScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  Product product = products[index];
                  return GridSample(product: product);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: false,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(categories[index]),
                  const SizedBox(height: 3),
                  Container(
                    height: 2,
                    width: 30,
                    color: selectedItem == index
                        ? Colors.black
                        : Colors.transparent,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
