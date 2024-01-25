abstract class CategorieEvent {}

class GetCatgoriesEvent extends CategorieEvent {}

class AddCategorieEvent extends CategorieEvent {
  String name;
  AddCategorieEvent({required this.name});
}
