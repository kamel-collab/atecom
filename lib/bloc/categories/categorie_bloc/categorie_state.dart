import 'package:atc/bloc/Categories/data/CategoriesProvider.dart';

abstract class CategoriesState {}

class InitialState extends CategoriesState {}

class LoadingCategoriesState extends CategoriesState {}

class SuccessCategoriesList extends CategoriesState {
  List<Categorie> categories;
  SuccessCategoriesList(this.categories);
}
