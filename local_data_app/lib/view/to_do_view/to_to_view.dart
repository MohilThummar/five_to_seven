import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_data_app/model/to_do_model.dart';
import 'package:local_data_app/res/constant/constant.dart';
import 'package:local_data_app/view/add_edit_to_do/add_edit_to_do_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ToDoView extends StatefulWidget {
  const ToDoView({super.key});

  @override
  State<ToDoView> createState() => _ToDoViewState();
}

class _ToDoViewState extends State<ToDoView> {
  SharedPreferences? prefs;

  setInstance() async {
    prefs = await SharedPreferences.getInstance();
    getToDOData();
  }

  getToDOData() async {
    Constant.toDoModelList = (json.decode(prefs!.getString("ToDoList")!) as List).map((value) => ToDoModel.fromJson(value)).toList();
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    setInstance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To - Do View"),
      ),
      body: Constant.toDoModelList.isEmpty
          ? const Center(
              child: Text(
                "No To-Do Found",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : ListView.separated(
              itemCount: Constant.toDoModelList.length,
              padding: const EdgeInsets.all(15),
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: CupertinoColors.lightBackgroundGray,
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Title: ${Constant.toDoModelList[index].title}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("SubTitle: ${Constant.toDoModelList[index].content}"),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          Constant.toDoModelList.removeAt(index);
                          prefs!.setString("ToDoList", json.encode(Constant.toDoModelList.map((value) => value.toJson()).toList()));
                        });
                      },
                      color: Colors.red,
                      icon: const Icon(CupertinoIcons.delete),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddEditToDoView(index: index),
                          ),
                        ).then((value) {
                          setState(() {});
                        });
                      },
                      color: Colors.blue,
                      icon: const Icon(CupertinoIcons.pen),
                    ),
                  ],
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddEditToDoView(),
            ),
          ).then((value) {
            setState(() {});
          });
        },
        icon: const Icon(Icons.add),
        label: const Text('Add To-do'),
      ),
    );
  }
}
