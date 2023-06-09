import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Screen"),
      ),
      drawer: const Drawer(),
      endDrawer: const Drawer(),
      drawerEdgeDragWidth: 100,
      body: const Column(
        children: [],
      ),
    );
  }
}
