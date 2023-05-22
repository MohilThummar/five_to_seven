import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.yellow,
                  margin: const EdgeInsets.only(bottom: 20),
                ),
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.red,
                  margin: const EdgeInsets.only(bottom: 40),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
