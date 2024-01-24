import 'package:atc/bloc/Categories/data/CategoriesProvider.dart';
import 'package:atc/bloc/categories/categorie_bloc/categorie_bloc.dart';
import 'package:atc/bloc/categories/categorie_bloc/categorie_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Categories extends StatelessWidget {
  Categories({super.key});
  List<Categorie> categories = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategorieBloc, CategoriesState>(
        builder: (context, state) {
      print('je suis dans categorie');
      if (state is LoadingCategoriesState) {
        return CircularProgressIndicator();
      }
      if (state is SuccessCategoriesList) {
        categories = state.categories;
      }
      return Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: const Text(
              'Categories',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < categories.length; i++)
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/images/dsl-x1852e.jpg",
                          width: 30,
                          height: 30,
                        ),
                        Text(
                          categories[i].name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xFF4C53A5),
                          ),
                        )
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
