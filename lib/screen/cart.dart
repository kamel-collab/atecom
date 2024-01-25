import 'package:atc/widgets/cart_app_bar.dart';
import 'package:atc/widgets/cart_bottom_navbar.dart';
import 'package:atc/widgets/cart_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            //temporary height

            padding: EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                CartItem(),
                footer(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }

  Container footer() {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      // ),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF4C53A5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Add Coupon",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF4C53A5),
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
