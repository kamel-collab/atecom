import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ProductsProvider {
// creer ne function getProducts   doit etre une promesse
//elle retourne une list de Product
// depuis un api en utilsant http
//"bahmedkamel.com", 'wp-json/wc/v3/products'

  Future<List<Product>> getProducts() async {
    final mybox = Hive.box('myBox');
    //mybox.delete('token');
    final token = await mybox.get('token');
    print('inside productsProvuider');
    List<Product> products = [];
    var url = Uri.https("bahmedkamel.com",
        'wp-json/wc/v3/products'); // wp-json/wc/v3/products/categories
    Response response = await http.get(
      url,
      headers: {
        "Content-Type": "application/json",
        'Authorization': 'Bearer $token',
      },
      // encoding: Encoding.getByName("utf-8"),
    );
    if (response.statusCode == 200) {
      print('tout est ok');
      final body = json.decode(response.body) as List;
      body.forEach((json) {
        products.add(Product.fromJson(json));
      });
      print(products[0]);
      return products;

      //print(json.decode(response.body));
      // Do the rest of job here
    } else {
      print(response.statusCode);

      return [];
    }
  }
}

// pour categorie c'est id + name
class Product {
  late int id;
  late String name;
  late List images;
  late String description;
  late String price;

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    images = json['images'];
    description = json['description'];
    price = json['price'];
  }
}
