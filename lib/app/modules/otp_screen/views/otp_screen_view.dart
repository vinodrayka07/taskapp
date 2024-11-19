import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:otp_input_editor/otp_input_editor.dart';

import '../../../color/ApkColors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/otp_screen_controller.dart';

class OtpScreenView extends GetView<OtpScreenController> {
  const OtpScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    controller.count.value;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              //color: ApkColors.primaryColor,
              child:  Container(
                height: 40,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Color(0X401A9EB7),
                    borderRadius: BorderRadius.circular(20)),
                width: 40,
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    CupertinoIcons.back,
                    color: Color(0XFF1A9EB7),
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: const Text(
                "OTP Verification",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
              child: const Text(
                "Enter the verification code we just sent on your email address.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),

          Obx((){
            controller.count.value;
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: OtpInputEditor(
                obscureText: true,
                otpLength: 4,
                onOtpChanged: (value) {
                  print(value);

                  controller.otpData = value;
                  controller.increment();

                },
                onInitialization: (OtpInputController otpInputController) {

                    controller.otpInputController = otpInputController;

                },
                invalid: false,
                otpTextFieldBackgroundColor: Colors.white,
                cursorHeight: 25,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8.0,
                    spreadRadius: 1.0,
                  ),
                ],
                fieldWidth: 50.0,
                fieldHeight: 60.0,
                cursorWidth: 1.5,
                textInputStyle: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                boxDecoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            );
          }),

            GestureDetector(
              onTap: (){

                //controller.dataCheck();

              },
              child: Container(
                height: 60,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30,right: 20,left: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: ApkColors.primaryColor,
                  borderRadius: BorderRadius.circular(30),


                ),
                child:const Text(
                  "VERIFY",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
