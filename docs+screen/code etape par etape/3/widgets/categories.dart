import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({super.key});
  List categories = ["Repeteur", "Router", "Modem", "Adaptateur"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: const Text(
            'Categories',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4C53A5),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < categories.length; i++)
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: 140,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/images/dsl-x1852e.jpg",
                        width: 30,
                        height: 30,
                      ),
                      Text(
                        categories[i],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color(0xFF4C53A5),
                        ),
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
