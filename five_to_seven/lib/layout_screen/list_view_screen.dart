import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  List<Color> colorList = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.indigo,
  ];

  Map mapData = {
    "color": Colors.red,
    "text": "Red Color",
  };

  List<Map<String, dynamic>> colorTextList = [
    {"color": Colors.red, "text": "Red Color"},
    {"color": Colors.yellow, "text": "Yellow Color"},
    {"color": Colors.blue, "text": "Blue Color"},
    {"color": Colors.pink, "text": "Pink Color"},
    {"color": Colors.indigo, "text": "Indigo Color"},
    {"color": Colors.green, "text": "Green Color"},
    {"color": Colors.deepOrange, "text": "Deep Orange Color"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List View Screen")),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(15),
        itemCount: colorTextList.length,
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemBuilder: (context, index) => Container(
          height: 120,
          // color: index == 2 ? Colors.red : Colors.blue,
          // color: colorList[index],
          color: colorTextList[index]['color'],
          alignment: Alignment.center,
          child: Text(
            colorTextList[index]['text'],
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
