import 'package:atc/bloc/products/data/productsProvider.dart';

abstract class ProductsState {}

class InitialState extends ProductsState {}

class LoadingProductsState extends ProductsState {}

class SuccessProductsList extends ProductsState {
  List<Product> products;
  SuccessProductsList(this.products);
}
