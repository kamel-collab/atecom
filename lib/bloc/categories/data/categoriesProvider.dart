import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class CategoriesProvider {
// creer ne function getProducts   doit etre une promesse
//elle retourne une list de Product
// depuis un api en utilsant http
//"bahmedkamel.com", 'wp-json/wc/v3/products'
  static const String token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MDYxMDIyMTQsImV4cCI6MTcwNjEwNTgxNCwiZW1haWwiOiJhZG1pbkBiYWhtZWRrYW1lbC5jb20iLCJpZCI6IjEiLCJzaXRlIjoiaHR0cHM6XC9cL3d3dy5iYWhtZWRrYW1lbC5jb20iLCJ1c2VybmFtZSI6ImFkbWluIiwiaXNzIjoiaHR0cHM6XC9cL3d3dy5iYWhtZWRrYW1lbC5jb20ifQ.XxRb14NUoWDMAlWZ3Y_dxV9yEl8bffIP1uZuWHqI97k";
  Future<List<Categorie>> getCategories() async {
    print('inside productsProvuider');
    List<Categorie> categories = [];
    var url = Uri.https("bahmedkamel.com",
        'wp-json/wc/v3/products/categories'); // wp-json/wc/v3/products/categories
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
        categories.add(Categorie.fromJson(json));
      });
      //print(products[0]);
      return categories;

      //print(json.decode(response.body));
      // Do the rest of job here
    } else {
      print(response.statusCode);

      return [];
    }
  }
}

// pour categorie c'est id + name
class Categorie {
  late int id;
  late String name;

  Categorie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}
