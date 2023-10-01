import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_five/view/home/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                "Count: ${controller.count.value}",
                style: const TextStyle(fontSize: 22),
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.count++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
