import 'package:five_to_seven/routes/routes_name.dart';
import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const SecondView(),
                //   ),
                // );

                Navigator.pushNamed(context, RoutesName.secondView);
                Navigator.pushReplacementNamed(context, "/SecondView");
                Navigator.pushNamedAndRemoveUntil(context, "/SecondView",(route) => false,);

                Navigator.pop(context);
              },
              child: const Text("Go To Next Screen"),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
