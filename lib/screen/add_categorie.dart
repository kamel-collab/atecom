import 'package:atc/bloc/categories/categorie_bloc/categorie_bloc.dart';
import 'package:atc/bloc/categories/categorie_bloc/categorie_event.dart';
import 'package:atc/bloc/categories/categorie_bloc/categorie_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';

class AddCat extends StatefulWidget {
  const AddCat({Key? key}) : super(key: key);

  @override
  State<AddCat> createState() => _AddCattState();
}

class _AddCattState extends State<AddCat> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CategorieBloc, CategoriesState>(
          builder: (context, state) {
        if (state is AddCatSuccess) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushNamed(context, "/");
          });
        }

        return Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Add Categorie',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'cat name',
                  ),
                ),
              ),
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: Text('add'),
                    onPressed: () {
                      context
                          .read<CategorieBloc>()
                          .add(AddCategorieEvent(name: nameController.text));
                    },
                  )),
            ],
          ),
        );
      }),
    );
  }
}
