import 'package:flutter/material.dart';

class ClipScreen extends StatefulWidget {
  const ClipScreen({Key? key}) : super(key: key);

  @override
  State<ClipScreen> createState() => _ClipScreenState();
}

class _ClipScreenState extends State<ClipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clip Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.red,
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                "assets/images/bg_image.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            ClipRect(
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: 100,
                width: 120,
                child: Image.asset(
                  "assets/images/bg_image.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 100,
                width: 120,
                child: Image.asset(
                  "assets/images/bg_image.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ClipOval(
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                "assets/images/bg_image.jpg",
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
