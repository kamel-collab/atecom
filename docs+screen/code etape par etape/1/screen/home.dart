import 'package:ebackup/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [HomeAppBar()],
      ),
    );
  }
}