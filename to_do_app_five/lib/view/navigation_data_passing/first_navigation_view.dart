import 'package:flutter/material.dart';
import 'package:to_do_app_five/view/navigation_data_passing/second_navigation_view.dart';

class FirstNavigationView extends StatefulWidget {
  const FirstNavigationView({super.key});

  @override
  State<FirstNavigationView> createState() => _FirstNavigationViewState();
}

class _FirstNavigationViewState extends State<FirstNavigationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.withOpacity(0.4),
        title: const Text("First Navigation View"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondNavigationView(
                      name: "Mohil Thummar",
                      color: Colors.amberAccent,
                      count: 15,
                      listMapData: [
                        {"name": "Jeet"},
                        {"name": "Unati"},
                        {"name": "Vaidik"},
                        {"name": "Krushika"},
                        {"name": "Dhruyan"},
                      ],
                    ),
                  ),
                ).then((value) {
                  debugPrint("First screen is back : $value");
                });
              },
              child: const Text("Go to Second Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
