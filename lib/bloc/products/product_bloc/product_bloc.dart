import 'dart:async';

import 'package:atc/bloc/products/data/productsProvider.dart';
import 'package:atc/bloc/products/product_bloc/product_event.dart';
import 'package:atc/bloc/products/product_bloc/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(InitialState()) {
    //on event do function
    on<GetProductsEvent>(getProductsList);
  }

  FutureOr<void> getProductsList(
      GetProductsEvent event, Emitter<ProductsState> emit) async {
    //stp affiche moi unloading = envoi le state loading

    emit(LoadingProductsState());
    //je clacule les donné et je les affect dans une variable
    List<Product> products = await ProductsProvider().getProducts();
    //si tout est ok alors stp envoi success sinon envoi falur
    emit(SuccessProductsList(products));
  }
}
