import 'dart:async';

import 'package:atc/bloc/Categories/data/CategoriesProvider.dart';
import 'package:atc/bloc/categories/categorie_bloc/categorie_event.dart';
import 'package:atc/bloc/categories/categorie_bloc/categorie_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategorieBloc extends Bloc<CategorieEvent, CategoriesState> {
  CategorieBloc() : super(InitialState()) {
    //on event do function
    on<GetCatgoriesEvent>(getCategorieList);
  }

  FutureOr<void> getCategorieList(
      GetCatgoriesEvent event, Emitter<CategoriesState> emit) async {
    //stp affiche moi unloading = envoi le state loading

    emit(LoadingCategoriesState());
    //je clacule les donné et je les affect dans une variable
    List<Categorie> categories = await CategoriesProvider().getCategories();
    //si tout est ok alors stp envoi success sinon envoi falur
    emit(SuccessCategoriesList(categories));
  }
}
