import 'package:flutter/material.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Hello everyone",
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              // softWrap: true,
              style: TextStyle(
                color: Colors.red,
                fontSize: 40,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                // letterSpacing: 5,
                // wordSpacing: 10,
                // height: 1.2,
                // backgroundColor: Colors.black,
                // decoration: TextDecoration.underline,
                // decorationColor: Colors.yellow,
                // decorationThickness: 5,
                // decorationStyle: TextDecorationStyle.solid,
                // shadows: [
                //   BoxShadow(
                //     color: Colors.blue,
                //     spreadRadius: 5,
                //     blurRadius: 5,
                //     offset: Offset(6, -6),
                //   ),
                // ],
              ),
            ),
            Text(
              "Hi, How are you",
              style: TextStyle(
                color: Colors.red,
                fontSize: 40,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
