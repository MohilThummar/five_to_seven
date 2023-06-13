import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  bool switchValue = true;
  bool? checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                debugPrint("ElevatedButton ------ onPressed --------------------->>");
              },
              autofocus: true,
              onHover: (value) {
                debugPrint("ElevatedButton ------ onHover --------------------->>");
              },
              child: const Text("Elevated Button"),
            ),
            const SizedBox(height: 5),
            OutlinedButton(
              onPressed: () {
                debugPrint("OutlineButton ------ onPressed ------------------->>");
              },
              child: const Text("Outline Button"),
            ),
            const SizedBox(height: 5),
            const BackButton(),
            const SizedBox(height: 5),
            const CloseButton(),
            const SizedBox(height: 5),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 5),
            TextButton(
              onPressed: () {},
              child: const Text("Text Button"),
            ),
            const SizedBox(height: 5),
            InkWell(
              onTap: () {
                debugPrint("InkWell ------ onPressed ------------------->>");
              },
              hoverColor: Colors.red,
              child: const Text("Hello ink"),
            ),
            const SizedBox(height: 5),
            Switch(
              value: switchValue,
              onChanged: (value) {
                debugPrint("Value --> $value");
                switchValue = value;
                setState(() {});
              },
            ),
            const SizedBox(height: 5),
            CupertinoSwitch(
              value: switchValue,
              onChanged: (value) {
                debugPrint("Value --> $value");
                switchValue = value;
                setState(() {});
              },
            ),
            const SizedBox(height: 5),
            CupertinoButton(
              child: const Text("Cupertino Button"),
              onPressed: () {},
            ),
            const SizedBox(height: 5),
            Transform.scale(
              scale: 2,
              child: Checkbox(
                value: checkBoxValue,
                shape: CircleBorder(),
                onChanged: (value) {
                  debugPrint("Value --> $value");
                  checkBoxValue = value!;
                  setState(() {});
                },
              ),
            ),
            const SizedBox(height: 5),
            // Radio(
            //   value: value,
            //   groupValue: groupValue,
            //   onChanged: (value) {},
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
