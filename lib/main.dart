import 'package:atc/bloc/categories/categorie_bloc/categorie_bloc.dart';
import 'package:atc/bloc/products/product_bloc/product_bloc.dart';
import 'package:atc/screen/cart_screen.dart';
import 'package:atc/screen/home.dart';
import 'package:atc/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

//https://www.bahmedkamel.com/?rest_route=/simple-jwt-login/v1/auth&username=admin&password=pass@pass
void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  await Hive.initFlutter();
  var box = await Hive.openBox('myBox');
  runApp(MultiBlocProvider(providers: [
    BlocProvider<ProductsBloc>(
      create: (context) => ProductsBloc(),
    ),
    BlocProvider<CategorieBloc>(
      create: (context) => CategorieBloc(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => Home(),
        "cartScreen": (context) => CartScreen(),
        "login": (context) => Login(),
      },
    );
  }
}
