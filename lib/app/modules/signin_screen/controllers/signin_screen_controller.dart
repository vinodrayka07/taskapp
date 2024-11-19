import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../routes/app_pages.dart';

class SigninScreenController extends GetxController {
  //TODO: Implement SigninScreenController

  final count = 0.obs;
  SharedPreferences? prefs;

  TextEditingController phonecontroler = TextEditingController();
  TextEditingController otp = TextEditingController();
  bool visible = false;
  var temp;

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

  @override
  void dispose() {
    phonecontroler.dispose();
    otp.dispose();
    super.dispose();
  }


  dataCheck() async{

    if(phonecontroler.text.trim().isNotEmpty){

      //temp = await sendOTP(phonecontroler.text);
      Get.toNamed(Routes.OTP_SCREEN);
      verifyPhoneNumber(phonecontroler.text);


    } else{
      Get.snackbar("please check", "Mobile number");
    }
  }


  final FirebaseAuth _auth = FirebaseAuth.instance;


  Future<void> verifyPhoneNumber(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: '+91$phoneNumber',
      verificationCompleted: (PhoneAuthCredential credential) async {
        // Auto-retrieve verification code
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        // Verification failed
        Get.snackbar("Exception", e.toString());
      },
      codeSent: (String verificationId, int? resendToken) async {
        // Save the verification ID for future use
        String smsCode = 'xxxxxx'; // Code input by the user
        PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: smsCode,
        );
        // Sign the user in with the credential
        await _auth.signInWithCredential(credential);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
      timeout: Duration(seconds: 60),
    );
  }


  ValueNotifier userCredential = ValueNotifier('');

  signinGoogel() async{

    userCredential.value = await signInWithGoogle();
    if (userCredential.value != null){
      prefs = await SharedPreferences.getInstance();
      prefs?.setBool("isLogin", true);
      print(" email user ${ userCredential.value.user!.email}"
      );
      Get.snackbar("login successful", userCredential.value.user!.email);
      Map<String, String> data = {
        "email": userCredential.value.user!.email,
        "name": userCredential.value.user!.email,
        "profile": userCredential.value.user!.email,
      };
      Get.offNamed(Routes.MAIN_SCREEN,parameters: data);
    }


  }

  Future<dynamic> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on Exception catch (e) {
      // TODO
      print('exception->$e');
    }
  }

  void increment() => count.value++;
}
