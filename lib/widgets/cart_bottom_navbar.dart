import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 58,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "250 Da",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFF4C53A5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF4C53A5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Check Out",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
