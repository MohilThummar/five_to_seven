import 'package:flutter/material.dart';

class SimpleDialogView extends StatelessWidget {
  const SimpleDialogView({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(25),
      // backgroundColor: Colors.yellow,
      // shadowColor: Colors.red,
      // elevation: 30,
      surfaceTintColor: Colors.black,
      // insetAnimationDuration: Duration(seconds: 5),

      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Title",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "This is a subtitle of simple ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Ok"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
