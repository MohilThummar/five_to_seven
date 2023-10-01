import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_five/view/splash/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 1500),
              height: controller.isAnimate.value ? 200 : 40,
              width: controller.isAnimate.value ? 200 : 40,
              clipBehavior: Clip.antiAlias,
              curve: Curves.bounceOut,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: controller.isAnimate.value ? Colors.blue.withOpacity(0.5) : Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const FlutterLogo(),
            ),
            const SizedBox(height: 10),
            FadeTransition(
              opacity: controller.animation!.value,
              child: const Text(
                "To - Do App",
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
