import 'package:flutter/material.dart';

class RowScreen extends StatefulWidget {
  const RowScreen({Key? key}) : super(key: key);

  @override
  State<RowScreen> createState() => _RowScreenState();
}

class _RowScreenState extends State<RowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 150,
          color: Colors.purple,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(height: 80, width: 80, color: Colors.red),
              Container(height: 100, width: 80, color: Colors.yellow),
              Container(height: 80, width: 80, color: Colors.blue),
              Container(height: 80, width: 80, color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
