import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:otp_input_editor/otp_input_editor.dart';

class OtpScreenController extends GetxController {
  //TODO: Implement OtpScreenController

  final count = 0.obs;
  String otpData = "";
  OtpInputController? otpInputController;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
