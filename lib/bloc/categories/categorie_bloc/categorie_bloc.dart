import 'dart:async';

import 'package:atc/bloc/Categories/data/CategoriesProvider.dart';
import 'package:atc/bloc/categories/categorie_bloc/categorie_event.dart';
import 'package:atc/bloc/categories/categorie_bloc/categorie_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategorieBloc extends Bloc<CategorieEvent, CategoriesState> {
  CategorieBloc() : super(InitialState()) {
    //on event do function
    on<GetCatgoriesEvent>(getCategorieList);
    on<AddCategorieEvent>(addCategorie);
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

  FutureOr<void> addCategorie(
      AddCategorieEvent event, Emitter<CategoriesState> emit) async {
    emit(LoadingCategoriesState());
    bool postedCat = await CategoriesProvider().postCategorie(name: event.name);
    if (postedCat) {
      emit(AddCatSuccess());
    } else {
      emit(addFailure());
    }
  }
}
