import 'package:flutter/material.dart';

class ColumScreen extends StatefulWidget {
  const ColumScreen({Key? key}) : super(key: key);

  @override
  State<ColumScreen> createState() => _ColumScreenState();
}

class _ColumScreenState extends State<ColumScreen> {
  @override
  void initState() {
    // TODO: implement initState
    debugPrint("initState --------->> ");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    debugPrint("didChangeDependencies --------->> ");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build --------->> ");
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        // height: 600,
        // width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(height: 100, width: 100, color: Colors.red),
            Container(height: 100, width: 100, color: Colors.yellow),
            Container(height: 100, width: 200, color: Colors.blue),
            Container(height: 100, width: 100, color: Colors.green),
            Container(height: 100, width: 100, color: Colors.pink),
            Container(height: 100, width: 100, color: Colors.pink),
          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant ColumScreen oldWidget) {
    // TODO: implement didUpdateWidget
    debugPrint("didUpdateWidget --------->> ");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    debugPrint("deactivate --------->> ");
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    debugPrint("dispose --------->> ");
    super.dispose();
  }
}
