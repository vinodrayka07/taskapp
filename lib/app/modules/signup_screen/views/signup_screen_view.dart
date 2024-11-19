import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../color/ApkColors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signup_screen_controller.dart';

class SignupScreenView extends GetView<SignupScreenController> {
  const SignupScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    controller.count.value;
    return Scaffold(

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: const Text(
                  "Create Account",
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
                  "Signup",
                  textAlign: TextAlign.center,
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
                  controller: controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: ApkColors.yellow,
                  cursorErrorColor: ApkColors.orangeColor,
                  textAlignVertical: TextAlignVertical.top,
                  style: const TextStyle(
                    fontSize: 12,
                    color: ApkColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  //validator: validator,
                  validator: controller.Emailvalidator,
                  obscureText: false,
                  decoration: const InputDecoration(
                    // labelText: labelText ?? 'Full Name',

                    label: Text(
                      'Email',
                      style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    // isCollapsed: true,
                    //  errorText: errorText ?? 'erddror',
                    errorStyle:
                    TextStyle(fontSize: 10, color: ApkColors.orangeColor, fontFamily: 'Poppins',),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),

                    contentPadding: EdgeInsets.all(12),
                    labelStyle:
                    TextStyle(fontSize: 12, color: ApkColors.primaryColor, fontFamily: 'Poppins',),
                    // focusColor: Colors.green,

                    fillColor: Colors.white,
                    filled: true,
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFFFAFAFA),
                            width: 1.0),

                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFAFAFA),width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red,width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red,width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ApkColors.orangeColor,width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              Obx((){
                controller.count.value;
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: TextFormField(
                    controller: controller.passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    cursorColor: ApkColors.yellow,
                    cursorErrorColor: ApkColors.orangeColor,
                    textAlignVertical: TextAlignVertical.top,
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    validator: controller.Passwordvalidator,
                    obscureText: controller.passwordVisible,
                    decoration:  InputDecoration(
                      // labelText: labelText ?? 'Full Name',

                      label: const Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // isCollapsed: true,
                      //  errorText: errorText ?? 'erddror',
                      suffixIcon: IconButton(
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          controller.passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0XFFD6D6D6),
                        ),
                        onPressed: () {
                          controller.increment();
                          // Update the state i.e. toogle the state of passwordVisible variable
                          controller.passwordVisible =
                          !controller.passwordVisible;
                        },
                      ),
                      errorStyle:
                      TextStyle(fontSize: 10, color: ApkColors.orangeColor, fontFamily: 'Poppins',),
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.grey,
                      ),

                      contentPadding: EdgeInsets.all(12),
                      labelStyle:
                      TextStyle(fontSize: 12, color: ApkColors.primaryColor, fontFamily: 'Poppins',),
                      // focusColor: Colors.green,

                      fillColor: Colors.white,
                      filled: true,

                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xFFFAFAFA),
                              width: 1.0),

                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFAFAFA),width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red,width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red,width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ApkColors.orangeColor,width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                );
              }),

              Obx((){
                controller.count.value;
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: controller.repeatPasswordController,
                    keyboardType: TextInputType.text,


                    cursorColor: ApkColors.yellow,
                    cursorErrorColor: ApkColors.orangeColor,
                    textAlignVertical: TextAlignVertical.top,

                    style: const  TextStyle(
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                    validator: controller.Passwordvalidator,
                    obscureText: controller.ConFormPasswordVisible,
                    decoration:  InputDecoration(
                      // labelText: labelText ?? 'Full Name',
                      suffixIcon: IconButton(
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          controller.ConFormPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0XFFD6D6D6),
                        ),
                        onPressed: () {
                          controller.increment();
                          // Update the state i.e. toogle the state of passwordVisible variable
                          controller.ConFormPasswordVisible =
                          !controller.ConFormPasswordVisible;
                        },
                      ),

                      label: const Text(
                        'Repeat Password',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // isCollapsed: true,
                      //  errorText: errorText ?? 'erddror',
                      errorStyle:
                      TextStyle(fontSize: 10, color: ApkColors.orangeColor, fontFamily: 'Poppins',),
                      //  suffixIcon:
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.grey,
                      ),

                      contentPadding: EdgeInsets.all(12),
                      labelStyle:
                      TextStyle(fontSize: 12, color: ApkColors.primaryColor, fontFamily: 'Poppins',),
                      // focusColor: Colors.green,

                      fillColor: Colors.white,
                      filled: true,
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xFFFAFAFA),
                              width: 1.0),

                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFAFAFA),width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red,width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red,width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ApkColors.orangeColor,width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                );
              }),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: controller.mobileController,
                  keyboardType: TextInputType.phone,
                  cursorColor: ApkColors.yellow,
                  cursorErrorColor: ApkColors.orangeColor,
                  textAlignVertical: TextAlignVertical.top,
                  maxLength: 10,
                  style: const TextStyle(
                    fontSize: 12,
                    color: ApkColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  validator: (String? value) {
                    var passNonNullValue = value ?? "";
                    if (passNonNullValue.isEmpty) {
                      return ("Conform Password is required");
                    }
                    if (controller.passwordController.text != value) {
                      return "Enter Right Conform Password";
                    } else
                      return null;
                  },
                  obscureText: false,
                  decoration:  InputDecoration(
                    // labelText: labelText ?? 'Full Name',

                    label: Text(
                      'Mobile Number',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // isCollapsed: true,
                    //  errorText: errorText ?? 'erddror',
                    errorStyle:
                    TextStyle(fontSize: 10, color: ApkColors.orangeColor, fontFamily: 'Poppins',),
                    prefixIcon: CountryPickerDropdown(
                      initialValue: 'IN',
                      iconSize: 20,
                      itemBuilder: buildDropdownItem,
                     // itemFilter:  ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode),
                      priorityList:[
                        CountryPickerUtils.getCountryByIsoCode('GB'),
                        CountryPickerUtils.getCountryByIsoCode('CN'),
                      ],
                      sortComparator: (Country a, Country b) => a.isoCode.compareTo(b.isoCode),
                      onValuePicked: (Country country) {
                        print("${country.name}");
                      },
                    ),

                    contentPadding: EdgeInsets.all(12),
                    labelStyle:
                    TextStyle(fontSize: 12, color: ApkColors.primaryColor, fontFamily: 'Poppins',),
                    // focusColor: Colors.green,

                    fillColor: Colors.white,
                    filled: true,
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFFFAFAFA),
                            width: 1.0),

                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFAFAFA),width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red,width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red,width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ApkColors.orangeColor,width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),


              GestureDetector(
                onTap: (){
                  controller.dataCheck();
                  controller.formKey.currentState!.validate();
                  controller.increment();


                },
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20,right: 20,left: 20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: ApkColors.primaryColor,
                    borderRadius: BorderRadius.circular(30),


                  ),
                  child:const Text(
                    "NEXT",
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
              Container(
                margin: const EdgeInsets.only(top: 30,bottom: 20),
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
                    Card(
                      elevation: 10,
                      color: Colors.white,

                      child: Container(

                        width: 140,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color:Colors.grey,
                              width: 0.5),
                        ),

                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                               // controller.signinGoogel();
                              },
                              child: Container(
                                //color: Colors.black,
                                  alignment: Alignment.center,

                                  child: Image.asset(
                                    "assets/Google3x.png",
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
                    Card(
                      elevation: 10,
                      color: Colors.white,

                      child: Container(

                        width: 140,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color:Colors.grey,
                              width: 0.5),
                        ),

                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                               // controller.signinGoogel();
                                //Get.toNamed(Routes.MAIN_SCREEN);
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
                    "Already have an Account? ",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offNamed(Routes.SIGNIN_SCREEN);
                    },
                    child: const Text(
                      "SIGNIN",

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
      ),

    );;
  }
  Widget buildDropdownItem(Country country) => Container(
    child: Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(
          width: 8.0,
        ),
        Text("+${country.phoneCode}(${country.isoCode})"),
      ],
    ),
  );
}
