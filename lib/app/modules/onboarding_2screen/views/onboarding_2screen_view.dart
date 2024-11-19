import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../color/ApkColors.dart';
import '../../home/views/home_view.dart';
import '../../onboarding_3screen/views/onboarding_3screen_view.dart';
import '../../signin_screen/views/signin_screen_view.dart';
import '../controllers/onboarding_2screen_controller.dart';

class Onboarding2screenView extends GetView<Onboarding2screenController> {
  const Onboarding2screenView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(Onboarding2screenController());
    Get.lazyPut(() => Onboarding2screenController());
    return Scaffold(
      backgroundColor: ApkColors.primaryColor,
      body: Center(
        child: Stack(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 100,),
                  Container(
                      alignment: Alignment.center,
                      child: Image.asset("assets/onlineshopping.png"))]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: const Text(
                          "ONLINE SHOPPING",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: ApkColors.yellow,
                            fontFamily: 'Poppins',
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40,left: 20,right: 20),
                        child: const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n"
                              " Pharetra quam elementum massa, viverra. Ut turpis consectetur. ",
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: ApkColors.onboardingGreyColor,
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              height: 10,
                              width: 80,
                            ),
                            GestureDetector(
                              onTap: (){
                                Get.to(() => const SigninScreenView(),
                                    fullscreenDialog: true,
                                    popGesture: true,
                                    transition: Transition.fade,
                                    duration: const Duration(seconds: 1));

                              },
                              child: const Text(
                                "Skip >>",
                                maxLines: 3,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: ApkColors.yellow2,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Get.to(() => const Onboarding3screenView(),
                                    fullscreenDialog: true,
                                    popGesture: true,
                                    transition: Transition.rightToLeft,
                                    duration: const Duration(seconds: 1));
                              },
                              child: Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Image.asset(
                                    "assets/img.png",
                                    height: 55,
                                    width: 55,
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
