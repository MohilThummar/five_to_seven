import 'package:flutter/material.dart';
import 'package:project_structure_five/res/constant/app_colors.dart';
import 'package:project_structure_five/view/home/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  navigate() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeView(),
          ),
          (route) => false);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: FlutterLogo(
          size: 300,
          style: FlutterLogoStyle.horizontal,
        ),
      ),
    );
  }
}
