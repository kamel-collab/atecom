import 'package:atc/bloc/products/data/productsProvider.dart';
import 'package:atc/widgets/item_appbar.dart';
import 'package:atc/widgets/item_bottom_navbar.dart';
import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemPage extends StatefulWidget {
  ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <Product, dynamic>{}) as Map;
    Product product = arguments['product'];
    return Scaffold(
      backgroundColor: const Color(0xFFEDECF2),
      body: ListView(
        children: [
          const ItemAppBar(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.network(
              product.images[0]['src'],
              height: 300,
            ),
          ),
          Arc(
            height: 30,
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                        bottom: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            product.name,
                            style: TextStyle(
                              fontSize: 23,
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 17,
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 2.5,
                            minRating: 1,
                            allowHalfRating: true,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, index) => const Icon(
                              Icons.favorite,
                              color: Color(0xFF4C53A5),
                            ),
                            onRatingUpdate: (index) {},
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                  color: Color(0xFF4C53A5),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
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
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  CupertinoIcons.plus,
                                  color: Color(0xFF4C53A5),
                                  size: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Caractéristiques",
                            style: TextStyle(
                              fontSize: 23,
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          //for (int i = 0; i < product['caract'].length; i++)
                          /* Text(
                            product.description,
                            style: const TextStyle(
                              fontSize: 17,
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold,
                            ),
                          ),*/
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(prix: product.price),
    );
  }
}
