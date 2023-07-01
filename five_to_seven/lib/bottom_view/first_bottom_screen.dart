import 'package:flutter/material.dart';

class FirstBottomScreen extends StatefulWidget {
  const FirstBottomScreen({super.key});

  @override
  State<FirstBottomScreen> createState() => _FirstBottomScreenState();
}

class _FirstBottomScreenState extends State<FirstBottomScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
