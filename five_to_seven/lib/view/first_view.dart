import 'package:cached_network_image/cached_network_image.dart';
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
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.red,
              child: CachedNetworkImage(
                imageUrl: "http://via.placeholder.com/350x150",
                // progressIndicatorBuilder: (context, url, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress),
                placeholder: (context, url) => Icon(Icons.image_rounded),

                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            SizedBox(height: 20),
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
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "/SecondView",
                  (route) => false,
                );

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
