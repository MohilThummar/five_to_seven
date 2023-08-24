import 'package:flutter/material.dart';

class SecondNavigationView extends StatefulWidget {
  final String? name;
  final Color? color;
  final int? count;
  final List<Map<String, dynamic>>? listMapData;

  const SecondNavigationView({
    super.key,
    this.name,
    this.color,
    this.count,
    this.listMapData,
  });

  @override
  State<SecondNavigationView> createState() => _SecondNavigationViewState();
}

class _SecondNavigationViewState extends State<SecondNavigationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(0.4),
        title: const Text("Second Navigation View"),
      ),
      body: Container(
        color: (widget.color ?? Colors.red).withOpacity(0.4),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name: ${widget.name ?? ""}"),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.listMapData!.isEmpty ? 0 : widget.listMapData!.length,
                itemBuilder: (context, index) => Text("Student Name: ${widget.listMapData![index]['name']}"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, widget.name);
                },
                child: const Text("Go Back to first Screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
