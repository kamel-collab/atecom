import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ebackup/widgets/categories.dart';
import 'package:ebackup/widgets/home_app_bar.dart';
import 'package:ebackup/widgets/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
lmk
  List products = [
    {
      "marque": "D-LINK",
      "modele": "COVR-1103",
      "caract": [
        "Application : D-Link Wi-Fi App (iOS et androide)",
        "Wi-Fi Dual Band : 2.4 GHz Jusqu'à 300 Mbps/5 GHz Jusqu'à 866 Mbps",
        "contrôle parental : Créer des horaires d'accès, bloquer des appareils",
        "Commande vocale : Google/Alexa",
        "Securité Wi-Fi : WPA3 un cryptage à 128 bits"
      ],
      "prix": "17 500,00",
      "image": "assets/images/covr-1103.jpg"
    },
    {
      "marque": "D-LINK",
      "modele": "DSL-X1852E",
      "caract": [
        "Application : D-Link Wi-Fi App (iOS et androide)",
        "Wi-Fi Dual Band : 2.4 GHz Jusqu'à 300 Mbps/5 GHz Jusqu'à 866 Mbps",
        "contrôle parental : Créer des horaires d'accès, bloquer des appareils",
        "Commande vocale : Google/Alexa",
        "Securité Wi-Fi : WPA3 un cryptage à 128 bits"
      ],
      "prix": "19 800,00",
      "image": "assets/images/dsl-x1852e.jpg"
    },
    {
      "marque": "D-LINK",
      "modele": "DIR-X5460",
      "caract": [
        "Application : D-Link Wi-Fi App (iOS et androide)",
        "Wi-Fi Dual Band : 2.4 GHz Jusqu'à 300 Mbps/5 GHz Jusqu'à 866 Mbps",
        "contrôle parental : Créer des horaires d'accès, bloquer des appareils",
        "Commande vocale : Google/Alexa",
        "Securité Wi-Fi : WPA3 un cryptage à 128 bits"
      ],
      "prix": "22 500,00",
      "image": "assets/images/dir-x5460.jpg"
    },
    {
      "marque": "D-LINK",
      "modele": "DIR-3040",
      "caract": [
        "Application : D-Link Wi-Fi App (iOS et androide)",
        "Wi-Fi Dual Band : 2.4 GHz Jusqu'à 300 Mbps/5 GHz Jusqu'à 866 Mbps",
        "contrôle parental : Créer des horaires d'accès, bloquer des appareils",
        "Commande vocale : Google/Alexa",
        "Securité Wi-Fi : WPA3 un cryptage à 128 bits"
      ],
      "prix": "12 200,00",
      "image": "assets/images/dir-3040.jpg"
    },
    {
      "marque": "D-LINK",
      "modele": "4G LTE M920",
      "caract": [
        "Application : D-Link Wi-Fi App (iOS et androide)",
        "Wi-Fi Dual Band : 2.4 GHz Jusqu'à 300 Mbps/5 GHz Jusqu'à 866 Mbps",
        "contrôle parental : Créer des horaires d'accès, bloquer des appareils",
        "Commande vocale : Google/Alexa",
        "Securité Wi-Fi : WPA3 un cryptage à 128 bits"
      ],
      "prix": "11 200,00",
      "image": "assets/images/4gltem920.jpeg"
    },
    {
      "marque": "D-LINK",
      "modele": "DSL-2750",
      "caract": [
        "Application : D-Link Wi-Fi App (iOS et androide)",
        "Wi-Fi Dual Band : 2.4 GHz Jusqu'à 300 Mbps/5 GHz Jusqu'à 866 Mbps",
        "contrôle parental : Créer des horaires d'accès, bloquer des appareils",
        "Commande vocale : Google/Alexa",
        "Securité Wi-Fi : WPA3 un cryptage à 128 bits"
      ],
      "prix": "5 130,00",
      "image": "assets/images/dsl-2750.jpg"
    },
    {
      "marque": "D-LINK",
      "modele": "DSL-124",
      "caract": [
        "Application : D-Link Wi-Fi App (iOS et androide)",
        "Wi-Fi Dual Band : 2.4 GHz Jusqu'à 300 Mbps/5 GHz Jusqu'à 866 Mbps",
        "contrôle parental : Créer des horaires d'accès, bloquer des appareils",
        "Commande vocale : Google/Alexa",
        "Securité Wi-Fi : WPA3 un cryptage à 128 bits"
      ],
      "prix": "4 560,00",
      "image": "assets/images/dsl-124.jpg"
    },
    {
      "marque": "D-LINK",
      "modele": "DSL-224",
      "caract": [
        "Application : D-Link Wi-Fi App (iOS et androide)",
        "Wi-Fi Dual Band : 2.4 GHz Jusqu'à 300 Mbps/5 GHz Jusqu'à 866 Mbps",
        "contrôle parental : Créer des horaires d'accès, bloquer des appareils",
        "Commande vocale : Google/Alexa",
        "Securité Wi-Fi : WPA3 un cryptage à 128 bits"
      ],
      "prix": "6 100,00",
      "image": "assets/images/dsl-224.jpg"
    },
  ];

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
