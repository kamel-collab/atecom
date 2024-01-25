import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class LoginController {
  Future<void> login(uname, pwd) async {
    final mybox = Hive.box('myBox');

    var params = {
      "rest_route": "/simple-jwt-login/v1/auth",
      "username": uname,
      "password": pwd,
    };
    var url = Uri.https("bahmedkamel.com", '', params);
    Response response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
      },
    );
    if (response.statusCode == 200) {
      mybox.put('token', json.decode(response.body)['data']['jwt']);
    } else {}
  }
}
