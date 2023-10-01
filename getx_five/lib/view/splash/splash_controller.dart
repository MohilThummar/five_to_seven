import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_five/utils/routes/routes_name.dart';

class SplashController extends GetxController with GetTickerProviderStateMixin {
  RxBool isAnimate = false.obs;
  Rx<AnimationController>? controller;
  Rx<Animation<double>>? animation;

  fadeInAnimation() {
    controller = Rx(AnimationController(duration: const Duration(milliseconds: 1800), vsync: this));
    animation = Rx(CurvedAnimation(parent: controller!.value, curve: Curves.easeIn));
    Future.delayed(const Duration(milliseconds: 400), () => controller!.value.forward());
  }

  iconAnimation() => Future.delayed(const Duration(milliseconds: 100), () => isAnimate(true));

  // Get.toNamed(RoutesName.splashView)
  // Get.offAllNamed(RoutesName.splashView),
  // Get.offNamed(RoutesName.splashView),

  navigation() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offNamed(RoutesName.homeView),
    );
  }

  @override
  void onInit() {
    // TODO: implement onInit
    fadeInAnimation();
    iconAnimation();
    navigation();
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller!.value.dispose();
    super.dispose();
  }
}
