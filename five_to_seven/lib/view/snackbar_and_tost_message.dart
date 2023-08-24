import 'package:five_to_seven/utils/utils.dart';
import 'package:five_to_seven/view/drawer_view.dart';
import 'package:flutter/material.dart';

class SnackBarAndToastMessage extends StatefulWidget {
  const SnackBarAndToastMessage({super.key});

  @override
  State<SnackBarAndToastMessage> createState() => _SnackBarAndToastMessageState();
}

class _SnackBarAndToastMessageState extends State<SnackBarAndToastMessage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Utils utils = Utils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("SnackBar and Toast Message"),
      ),
      drawer: DrawerView(scaffoldKey: scaffoldKey),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                scaffoldKey.currentState!.openDrawer();
              },
              child: const Text("Open Drawer"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                utils.showSnackBar(content: "Hello Skill Qode!", context: context);
              },
              child: const Text("Show SnackBar"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                utils.showToastMessage(content: "Hello Skill Qode!");
              },
              child: const Text("Show Toast Message"),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
