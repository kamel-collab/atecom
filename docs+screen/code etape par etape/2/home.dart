import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ebackup/widgets/home_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeAppBar(),
        ],
      ),
      bottomNavigationBar: navigationBar(),
    );
  }

  CurvedNavigationBar navigationBar() {
    return CurvedNavigationBar(
      onTap: (index) {},
      backgroundColor: Colors.transparent,
      color: const Color(0xFF4C53A5),
      height: 70,
      items: const [
        Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          CupertinoIcons.cart_fill,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.list,
          size: 30,
          color: Colors.white,
        ),
      ],
    );
  }
}
