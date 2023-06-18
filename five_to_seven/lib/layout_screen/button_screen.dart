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

  int radioButton = 0;

  int radioListButton = 0;
  List<Map<String, dynamic>> colorTextList = [
    {"index": 1, "text": "Red Color"},
    {"index": 2, "text": "Yellow Color"},
    {"index": 3, "text": "Blue Color"},
    {"index": 4, "text": "Pink Color"},
    {"index": 5, "text": "Indigo Color"},
    {"index": 6, "text": "Green Color"},
    {"index": 7, "text": "Deep Orange Color"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Screen"),
      ),
      body: Center(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// First Button --> 1 = true
                Radio(
                  value: 1,
                  groupValue: radioButton,
                  onChanged: (value) {
                    debugPrint("Value ---> $value");
                    radioButton = value!;
                    setState(() {});
                  },
                ),

                /// Second Button --> 2 = true
                Radio(
                  value: 2,
                  groupValue: radioButton,
                  onChanged: (value) {
                    radioButton = value!;
                    setState(() {});
                  },
                ),
              ],
            ),
            const SizedBox(height: 5),
            ListTile(
              onTap: () {},
              title: Text("Jone"),
              subtitle: Text("Hello How are yoi"),
              trailing: Text("12:25"),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
              ),
            ),
            const SizedBox(height: 5),
            Column(
              children: colorTextList
                  .map(
                    (data) => RadioListTile(
                      value: data['index'],
                      groupValue: radioListButton,
                      onChanged: (value) {
                        radioListButton = value;
                        setState(() {});
                      },
                      title: Text(data['text']),
                      subtitle: Text("Hello How are yoi"),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 150),
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
