import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
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
      appBar: AppBar(title: const Text("Grid View Screen")),
      body: GridView.builder(
        itemCount: colorTextList.length,
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 3,
        //   mainAxisSpacing: 15,
        //   crossAxisSpacing: 15,
        //   mainAxisExtent: 150,
        //   // childAspectRatio: 5,
        // ),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
        ),
        padding: const EdgeInsets.all(15),
        itemBuilder: (context, index) => Container(
          color: colorTextList[index]["color"],
          alignment: Alignment.center,
          child: Text(
            "$index ${colorTextList[index]["text"]}",
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
