import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app_five/model/user_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  List<UserModel> userList = [];

  getUserData() {
    try {
      fireStore.collection('student').orderBy("age", descending: false).get().then(
        (value) {
          debugPrint("value.size --------->> ${value.size}");

          for (var data in value.docs) {
            debugPrint("value.id --------->> ${data.id}");
            debugPrint("value.docs --------->> ${jsonEncode(data.data())}");
            userList.add(userModelFromJson(jsonEncode(data.data())));
          }
        },
      );
    } on FirebaseException catch (error) {
      debugPrint("Firebase Error --------->> $error");
    } catch (error) {
      debugPrint("Error --------->> $error");
    }
  }

  storeUserData() {
    try {
      fireStore.collection('student').add(
        {
          "age": 20,
          "name": "Vaidik",
          "skill": ["Smoking", "135", "skimmer", "Mava Lover", "Phone Addict", "PUBG", "143 no mavo"]
        },
      ).then(
        (value) {
          debugPrint("Data add --------->>");
        },
      );
    } on FirebaseException catch (error) {
      debugPrint("Firebase Error --------->> $error");
    } catch (error) {
      debugPrint("Error --------->> $error");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home View")),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: userList.length,
              separatorBuilder: (context, index) => SizedBox(height: 15),
              itemBuilder: (context, index) => ListTile(
                title: Text(userList[index].name ?? ""),
                subtitle: Text("age: ${userList[index].age ?? ""} | Skill : ${userList[index].skill![0]}"),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              storeUserData();
            },
            child: Text("Add User data"),
          ),
          ElevatedButton(
            onPressed: () {
              getUserData();
            },
            child: Text("Get User data"),
          ),
        ],
      ),
    );
  }
}
