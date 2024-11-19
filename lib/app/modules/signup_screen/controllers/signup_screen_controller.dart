import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SignupScreenController extends GetxController {
  //TODO: Implement SignupScreenController

  final count = 0.obs;
  bool passVisible = false;
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();

  bool passwordVisible = false;
  bool ConFormPasswordVisible = false;

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

  dataCheck() async {
    if (emailController.text.trim().isNotEmpty &&
        mobileController.text.trim().isNotEmpty &&
        passwordController.text.trim().isNotEmpty &&
        repeatPasswordController.text.trim().isNotEmpty ) {

       FirebaseFirestore.instance
          .collection('userdata')
          .add({
        'email': emailController.text.toString(),
        'password':  passwordController.text.toString(),
        'confermpass':  repeatPasswordController.text.toString(),
        'phone': mobileController.text.toString(),
      }
          );
      //Get.toNamed(Routes.OTP_SCREEN);
    }  else{
      Get.snackbar(" ", "all Fields Required");
    }

  }

  FormFieldValidator<String>? Emailvalidator = (String? value) {
    RegExp regex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    var passNonNullValue = value ?? "";
    if (passNonNullValue.isEmpty) {
      return ("Email is required");
    }
    // else if(!regex.hasMatch(passNonNullValue)){
    //   return ("Email is not valid please check your email ");
    // }
    return null;
  };

  FormFieldValidator<String>? Passwordvalidator = (String? value) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    var passNonNullValue = value ?? "";
    if (passNonNullValue.isEmpty) {
      return ("Password is required");
    } else if (passNonNullValue.length < 6) {
      return ("Password Must be more than 6 characters");
    }
    // else if(!regex.hasMatch(passNonNullValue)){
    //   return ("Password should contain upper,lower,digit and Special character ");
    // }
  };

  void increment() => count.value++;
}
