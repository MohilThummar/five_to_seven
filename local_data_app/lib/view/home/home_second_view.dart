import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:local_data_app/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeSecondView extends StatefulWidget {
  const HomeSecondView({super.key});

  @override
  State<HomeSecondView> createState() => _HomeSecondViewState();
}

class _HomeSecondViewState extends State<HomeSecondView> {
  SharedPreferences? prefs;
  List<UserModel> userModel = [];

  setInstance() async {
    prefs = await SharedPreferences.getInstance();
    getData();
  }

  getData() {
    userModel = List<UserModel>.from((json.decode(prefs!.getString("user_data")!)).map((x) => UserModel.fromJson(x)));
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
        title: const Text("Home Second View"),
      ),
      body: ListView.builder(
        itemCount: userModel.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(userModel[index].name ?? ""),
          subtitle: Text(userModel[index].company!.name ?? ""),
        ),
      ),
    );
  }
}
