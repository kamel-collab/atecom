import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "IdooMarket",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          const Spacer(),
          Badge(
            label: const Text('2'),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
