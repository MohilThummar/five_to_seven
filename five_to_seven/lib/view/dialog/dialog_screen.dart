import 'package:five_to_seven/view/dialog/widget/simple_dialog.dart';
import 'package:flutter/material.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  // barrierColor: Colors.yellow,
                  barrierDismissible: false,
                  useSafeArea: true,
                  builder: (context) => const SimpleDialogView(),
                );
              },
              child: const Text("Simple Dialog"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const SimpleDialogView(),
                );
              },
              child: const Text("Alert Dialog"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  // useSafeArea: ,
                  // barrierColor: ,
                  // elevation: ,
                  // backgroundColor: ,
                  // clipBehavior: ,
                  // enableDrag: ,
                  // isDismissible: ,
                  showDragHandle: true,
                  builder: (context) => Container(
                    color: Colors.red,
                    width: double.infinity,
                    child: ListView(
                      // mainAxisSize: MainAxisSize.min,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,

                      children: [
                        Container(
                          height: 50,
                          width: 180,
                          color: Colors.blue,
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 50,
                          width: 180,
                          color: Colors.yellow,
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 50,
                          width: 180,
                          color: Colors.green,
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 50,
                          width: 180,
                          color: Colors.deepOrangeAccent,
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 50,
                          width: 180,
                          color: Colors.blue,
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 50,
                          width: 180,
                          color: Colors.yellow,
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 50,
                          width: 180,
                          color: Colors.green,
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 50,
                          width: 180,
                          color: Colors.deepOrangeAccent,
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                );
              },
              child: const Text("Open Bottom Sheet"),
            ),
          ],
        ),
      ),
    );
  }
}
