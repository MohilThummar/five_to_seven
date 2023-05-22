import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 200,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(50),
        decoration: BoxDecoration(
          // color: Color(0xFFFF0000),
          // borderRadius: BorderRadius.all(
          //   Radius.circular(50),
          // ),
          shape: BoxShape.circle,
          border: Border.all(width: 3),

          gradient: const LinearGradient(
            colors: [Colors.red, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2,
              spreadRadius: 15,
              offset: Offset(-60, 25),
            ),
            BoxShadow(
              color: Colors.red,
              blurRadius: 2,
              spreadRadius: 15,
              offset: Offset(60, 25),
            ),
          ],
        ),
      ),
    );
  }
}
