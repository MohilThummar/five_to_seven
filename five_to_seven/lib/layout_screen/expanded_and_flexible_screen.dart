import 'package:flutter/material.dart';

class ExpandedAndFlexibleScreen extends StatefulWidget {
  const ExpandedAndFlexibleScreen({Key? key}) : super(key: key);

  @override
  State<ExpandedAndFlexibleScreen> createState() => _ExpandedAndFlexibleScreenState();
}

class _ExpandedAndFlexibleScreenState extends State<ExpandedAndFlexibleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded And Flexible Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.green,
                child: const Text("123465789 mohil thummat  db c djkcfbsd sdjsdj vsdjhb 123465789 mohil thummat  db c djkcfbsd sdjsdj vsdjhb"),
              ),
            ),
            const SizedBox(height: 20),
            Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: Container(
                color: Colors.green,
                child: const Text("1234658465"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
