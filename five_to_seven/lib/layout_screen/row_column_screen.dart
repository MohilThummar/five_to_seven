import 'package:flutter/material.dart';

class RowColumnScreen extends StatefulWidget {
  const RowColumnScreen({Key? key}) : super(key: key);

  @override
  State<RowColumnScreen> createState() => _RowColumnScreenState();
}

class _RowColumnScreenState extends State<RowColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Container(height: 100, width: 100, color: Colors.yellow),
              Container(height: 100, width: 100, color: Colors.black),
              Container(height: 100, width: 100, color: Colors.green),
              Container(
                color: Colors.lime,
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(height: 100, width: 70, color: Colors.blue),
                    Container(height: 100, width: 70, color: Colors.pink),
                    Container(height: 100, width: 70, color: Colors.grey),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(height: 100, width: 70, color: Colors.lightGreen),
                          Container(height: 100, width: 70, color: Colors.deepPurple),
                          Container(height: 100, width: 70, color: Colors.greenAccent),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(height: 100, width: 70, color: Colors.lightGreen),
                          Container(height: 100, width: 70, color: Colors.deepPurple),
                          Container(height: 100, width: 70, color: Colors.greenAccent),
                          Container(height: 100, width: 70, color: Colors.orange),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
