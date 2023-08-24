import 'package:flutter/material.dart';

class ThirdNavigationView extends StatefulWidget {
  const ThirdNavigationView({super.key});

  @override
  State<ThirdNavigationView> createState() => _ThirdNavigationViewState();
}

class _ThirdNavigationViewState extends State<ThirdNavigationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.4),
        title: const Text("Third Navigation View"),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
