import 'package:flutter/material.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  State<AppBarScreen> createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("App Bar Screen"),
        centerTitle: true,
        elevation: 5,
        shadowColor: Colors.red,
        leading: Container(
          color: Colors.yellow,
          child: const Icon(Icons.add),
        ),
        actions: const [
          // actionsIconTheme: ,
          Icon(Icons.notifications),
          SizedBox(width: 15),
          Icon(Icons.settings),
          SizedBox(width: 15),
        ],
        leadingWidth: 150,
      ),
      body: const Column(),
    );
  }
}
