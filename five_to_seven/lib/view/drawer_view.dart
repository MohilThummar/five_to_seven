import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DrawerView({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.red,
      width: 300,
      child: Column(
        children: [
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              scaffoldKey.currentState!.closeDrawer();
            },
            child: const Text("Close Drawer"),
          ),
        ],
      ),
    );
  }
}
