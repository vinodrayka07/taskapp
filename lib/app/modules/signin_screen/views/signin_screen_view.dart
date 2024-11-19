import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../color/ApkColors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signin_screen_controller.dart';

class SigninScreenView extends GetView<SigninScreenController> {
  const SigninScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SigninScreenController());
    Get.lazyPut(() => SigninScreenController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
                alignment: Alignment.center,
                child: Image.asset("assets/appicon.png")),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: const Text(
                "Welcome Back!",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: const Text(
                "Login to continue",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: controller.phonecontroler,
                keyboardType: TextInputType.phone,
                cursorColor: ApkColors.yellow,
                maxLength: 10,
                cursorErrorColor: ApkColors.orangeColor,
                textAlignVertical: TextAlignVertical.top,
                style: const TextStyle(
                  fontSize: 12,
                  color: ApkColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
                //validator: validator,
                obscureText: false,
                decoration: const InputDecoration(
                  // labelText: labelText ?? 'Full Name',

                  label: Text(
                    'Phone Number ',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // isCollapsed: true,
                  //  errorText: errorText ?? 'erddror',
                  errorStyle: TextStyle(
                    fontSize: 10,
                    color: ApkColors.orangeColor,
                    fontFamily: 'Poppins',
                  ),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),

                  contentPadding: EdgeInsets.all(12),
                  labelStyle: TextStyle(
                    fontSize: 12,
                    color: ApkColors.primaryColor,
                    fontFamily: 'Poppins',
                  ),
                  // focusColor: Colors.green,

                  fillColor: Colors.white,
                  filled: true,
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 3.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ApkColors.orangeColor),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.dataCheck();
                //Get.toNamed(Routes.OTP_SCREEN);
              },
              child: Container(
                height: 60,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: ApkColors.primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  "Get Otp",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 20),
              child: const Text(
                "Or Continue With",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.signinGoogel();
                    },
                    child: Card(
                      elevation: 10,
                      color: Colors.white,
                      child: Container(
                        width: 140,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey, width: 0.5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                //color: Colors.black,
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "assets/Google3x.png",
                                  height: 30,
                                  width: 30,
                                  fit: BoxFit.cover,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Google",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    color: Colors.white,
                    child: Container(
                      width: 140,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey, width: 0.5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // controller.signinGoogel();
                              Get.toNamed(Routes.MAIN_SCREEN);
                            },
                            child: Container(
                                //color: Colors.black,
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "assets/Facebook3x.png",
                                  height: 30,
                                  width: 30,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Google",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don’t have an account? ",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    Get.offNamed(Routes.SIGNUP_SCREEN);
                  },
                  child: const Text(
                    "SIGNUP",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: ApkColors.primaryColor,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
