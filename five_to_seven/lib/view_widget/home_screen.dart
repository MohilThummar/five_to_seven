import 'package:five_to_seven/common/app_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Common Widget Screen"),
      ),
      body: ListView(
        children: const [
          AppButton(
            title: "Data",
            number: 4,
          ),
          AppButton(
            title: "next",
            number: 2,
            color: Colors.yellow,
          ),
          AppButton(
            number: 3,
            color: Colors.black,
            title: "done",
          ),
          AppButton(
            number: 4,
            color: Colors.green,
            title: "Done",
          ),
        ],
      ),
    );
  }
}
