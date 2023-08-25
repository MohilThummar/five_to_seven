import 'package:flutter/material.dart';
import 'package:to_do_app_five/model/to_do_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<ToDoModel> toDoModelList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To - Do List"),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
