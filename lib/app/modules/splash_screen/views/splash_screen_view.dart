import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx((){
          controller.count.value;
          return Center(
              child: Image.asset("assets/appicon.png")
          );
        })

    );;
  }
}
