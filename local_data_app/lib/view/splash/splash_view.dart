import 'package:flutter/material.dart';
import 'package:local_data_app/view/to_do_view/to_to_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  bool isAnimate = false;
  AnimationController? controller;
  Animation<double>? animation;

  fadeInAnimation() {
    controller = AnimationController(duration: const Duration(milliseconds: 1800), vsync: this);
    animation = CurvedAnimation(parent: controller!, curve: Curves.easeIn);
    Future.delayed(const Duration(milliseconds: 400), () => controller!.forward());
  }

  iconAnimation() {
    Future.delayed(
      const Duration(milliseconds: 100),
      () => isAnimate = true,
    );
    setState(() {});
  }

  navigation() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const ToDoView(),
        ),
        (route) => false,
      ),
    );
  }

  @override
  void initState() {
    fadeInAnimation();
    iconAnimation();
    navigation();
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 1500),
              height: isAnimate ? 200 : 40,
              width: isAnimate ? 200 : 40,
              clipBehavior: Clip.antiAlias,
              curve: Curves.bounceOut,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: isAnimate ? const Color(0xA616A884) : Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const FlutterLogo(),
            ),
            const SizedBox(height: 10),
            FadeTransition(
              opacity: animation!,
              child: const Text(
                "Local Database App",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
