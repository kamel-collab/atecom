import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  Products({required this.products, super.key});
  List products;

  @override
  State<Products> createState() => _ItemsState();
}

class _ItemsState extends State<Products> {
  //
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 0.65,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.products.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext ctx, index) {
        return item(context, index);
      },
    );
  }

  Container item(BuildContext context, int index) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color(0xFF4C53A5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "-50 %",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Icon(
                Icons.favorite_border,
                color: Colors.red,
              )
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'itemPage',
                  arguments: widget.products[index]);
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Image.asset(widget.products[index]["image"]),
              height: 120,
              width: 120,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            alignment: Alignment.centerLeft,
            child: Text(
              widget.products[index]["marque"],
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF4C53A5),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            alignment: Alignment.centerLeft,
            child: Text(
              widget.products[index]["modele"],
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.products[index]["prix"] + " DA",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF4C53A5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.shopping_cart_checkout,
                  color: Color(0xFF4C53A5),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
