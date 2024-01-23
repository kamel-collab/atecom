import 'package:atc/bloc/products/data/productsProvider.dart';
import 'package:atc/widgets/categories.dart';
import 'package:atc/widgets/home_app_bar.dart';
import 'package:atc/widgets/products.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ProductsProvider p = ProductsProvider();
  List<Product> products = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    p.getProducts().then((value) {
      setState(() {
        products = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeAppBar(),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      decoration: const BoxDecoration(
                        color: Color(0xFFEDECF2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              height: 50,
                              width: 300,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search ..."),
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.search,
                              size: 27,
                              color: Color(0xFF4C53A5),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Color(0xFFEDECF2),
                      child: Column(
                        children: [
                          Categories(),
                          //items
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            child: const Text(
                              'Best Selling',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4C53A5),
                              ),
                            ),
                          ),
                          Products(products: products),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
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
