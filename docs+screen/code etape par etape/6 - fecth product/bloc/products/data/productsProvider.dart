import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ProductsProvider {
  Future<List<Products>> getProducts() async {
    print("getting products List.....");
    List<Products> products = [];
    var url = Uri.https("bahmedkamel.com", 'wp-json/wc/v3/products');
    Response response = await http.get(
      url,
      headers: {
        "Content-Type": "application/json",
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE3MDIxNDc3MTcsImV4cCI6MTcwMjE1MTMxNywiZW1haWwiOiJhZG1pbkBiYWhtZWRrYW1lbC5jb20iLCJpZCI6IjEiLCJzaXRlIjoiaHR0cHM6XC9cL3d3dy5iYWhtZWRrYW1lbC5jb20iLCJ1c2VybmFtZSI6ImFkbWluIiwiaXNzIjoiaHR0cHM6XC9cL3d3dy5iYWhtZWRrYW1lbC5jb20ifQ.WfXg_Fi-BBiaOBAdiGl-HW0arRlk41NubWYhwaYNQLE',
      },
      // encoding: Encoding.getByName("utf-8"),
    );
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as List;
      body.forEach((json) {
        products.add(Products.fromJson(json));
      });
      return products;

      //print(json.decode(response.body));
      // Do the rest of job here
    } else {
      print(response.statusCode);

      return [];
    }
  }
}

class Products {
  late int id;
  late String name;
  late List images;
  late String description;
  late String price;

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    images = json['images'];
    description = json['description'];
    price = json['price'];
  }
}
