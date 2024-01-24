import 'package:atc/bloc/categories/categorie_bloc/categorie_bloc.dart';
import 'package:atc/bloc/products/product_bloc/product_bloc.dart';
import 'package:atc/screen/cart_screen.dart';
import 'package:atc/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
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
      },
    );
  }
}
