import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Icon(
              Icons.arrow_back_rounded,
              size: 60,
              color: Colors.red,
              textDirection: TextDirection.rtl,
              shadows: [
                Shadow(
                  color: Colors.blue,
                  blurRadius: 10,
                  offset: Offset(20, 10),
                ),
              ],
            ),
            Image.asset(
              "assets/images/bg_image.jpg",
            ),
            Image.network(
              "https://picsum.photos/id/580/400/500",
              height: 200,
              width: 400,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}
