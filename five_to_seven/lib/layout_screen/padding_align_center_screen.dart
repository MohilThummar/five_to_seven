import 'package:flutter/material.dart';

class PaddingAlignCenterScreen extends StatefulWidget {
  const PaddingAlignCenterScreen({Key? key}) : super(key: key);

  @override
  State<PaddingAlignCenterScreen> createState() => _PaddingAlignCenterScreenState();
}

class _PaddingAlignCenterScreenState extends State<PaddingAlignCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding, Align, Center Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(height: 100, width: 100, color: Colors.red),
            const SizedBox(height: 20),
            Container(height: 100, width: 100, color: Colors.yellow),
            Container(height: 100, width: 100, color: Colors.blue),
            Row(
              children: [
                Container(height: 100, width: 100, color: Colors.green),
                const SizedBox(width: 20),
                Container(height: 100, width: 100, color: Colors.black),
                Container(height: 100, width: 100, color: Colors.deepPurple),
              ],
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.teal,
              child: const Center(
                child: Icon(
                  Icons.add,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
