import 'package:flutter/material.dart';
import 'package:flutter_ui_tut/home/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: const Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'IranFlut Shop',
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
            onPressed: () {}, icon: Image.asset('assets/icons/drawer.png')),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              onPressed: () {}, icon: Image.asset('assets/icons/search.png')),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/shopping-cart.png')),
        ),
      ],
    );
  }
}
