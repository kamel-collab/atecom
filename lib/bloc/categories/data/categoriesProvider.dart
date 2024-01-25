import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class CategoriesProvider {
// creer ne function getProducts   doit etre une promesse
//elle retourne une list de Product
// depuis un api en utilsant http
//"bahmedkamel.com", 'wp-json/wc/v3/products'

  Future<List<Categorie>> getCategories() async {
    final mybox = Hive.box('myBox');
    //mybox.delete('token');
    final token = await mybox.get('token');
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

  Future<bool> postCategorie({required String name}) async {
    final mybox = Hive.box('myBox');
    //mybox.delete('token');
    final token = await mybox.get('token');
    var url = Uri.https("bahmedkamel.com", 'wp-json/wc/v3/products/categories');
    Response response = await http.post(url,
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer ' + token,
        },
        body: jsonEncode({
          "name": name,
        })
        // encoding: Encoding.getByName("utf-8"),
        );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return true;
    } else {
      //print(response.statusCode);

      return false;
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
