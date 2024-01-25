import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 4; i++)
          Container(
            height: 110,
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Radio(
                  value: "",
                  groupValue: "",
                  activeColor: Color(0xFF4C53A5),
                  onChanged: (value) {},
                ),
                Container(
                  height: 70,
                  width: 60,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset("assets/images/$i.jpg"),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Title",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF4C53A5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "1200 Da",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF4C53A5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: const Icon(
                              CupertinoIcons.plus,
                              size: 18,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Text(
                              "01",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF4C53A5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: const Icon(
                              CupertinoIcons.minus,
                              size: 18,
                            ),
                          ),
                        ],
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
