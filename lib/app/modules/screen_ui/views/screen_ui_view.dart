import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:taskapk/app/color/ApkColors.dart';

import '../controllers/screen_ui_controller.dart';

class ScreenUiView extends GetView<ScreenUiController> {
  final TabController? tabController;

  const ScreenUiView({super.key, this.tabController });
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
         Row(
           children: [
             Container(
               margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
               alignment: Alignment.center,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),

                 color: Colors.white
               ),
               child: Column(
                 children: [
                   Container(

                     alignment: Alignment.center,
                     height: 47,
                     width: 47,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         border: Border.all(color:ApkColors.yellow, width: 0.5),
                         color: Colors.white
                     ),
                     child: Image.asset(
                       "assets/Facebook3x.png",
                       height: 30,
                       width: 30,
                       fit: BoxFit.cover,
                     ),
                   ),
                   SizedBox(height: 15),
                   Text("beauty",
                     style: TextStyle(
                       fontWeight: FontWeight.w400,
                       fontFamily: 'Poppins',
                       color: Colors.black,
                       fontSize: 10,
                     ),)

                 ],
               ),
             ),
             Container(
               margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
               alignment: Alignment.center,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),

                 color: Colors.white
               ),
               child: Column(
                 children: [
                   Container(

                     alignment: Alignment.center,
                     height: 47,
                     width: 47,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         border: Border.all(color:ApkColors.yellow, width: 0.5),
                         color: Colors.white
                     ),
                     child: Image.asset(
                       "assets/Facebook3x.png",
                       height: 30,
                       width: 30,
                       fit: BoxFit.cover,
                     ),
                   ),
                   SizedBox(height: 15),
                   Text("beauty",
                     style: TextStyle(
                       fontWeight: FontWeight.w400,
                       fontFamily: 'Poppins',
                       color: Colors.black,
                       fontSize: 10,
                     ),)

                 ],
               ),
             ),
             Container(
               margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
               alignment: Alignment.center,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),

                   color: Colors.white
               ),
               child: Column(
                 children: [
                   Container(

                     alignment: Alignment.center,
                     height: 47,
                     width: 47,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         border: Border.all(color:ApkColors.yellow, width: 0.5),
                         color: Colors.white
                     ),
                     child: Image.asset(
                       "assets/Facebook3x.png",
                       height: 30,
                       width: 30,
                       fit: BoxFit.cover,
                     ),
                   ),
                   SizedBox(height: 15),
                   Text("beauty",
                     style: TextStyle(
                       fontWeight: FontWeight.w400,
                       fontFamily: 'Poppins',
                       color: Colors.black,
                       fontSize: 10,
                     ),)

                 ],
               ),
             ),
             Container(
               margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
               alignment: Alignment.center,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),

                   color: Colors.white
               ),
               child: Column(
                 children: [
                   Container(

                     alignment: Alignment.center,
                     height: 47,
                     width: 47,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         border: Border.all(color:ApkColors.yellow, width: 0.5),
                         color: Colors.white
                     ),
                     child: Image.asset(
                       "assets/Facebook3x.png",
                       height: 30,
                       width: 30,
                       fit: BoxFit.cover,
                     ),
                   ),
                   SizedBox(height: 15),
                   Text("beauty",
                     style: TextStyle(
                       fontWeight: FontWeight.w400,
                       fontFamily: 'Poppins',
                       color: Colors.black,
                       fontSize: 10,
                     ),)

                 ],
               ),
             )
           ],
         ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),

                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Container(

                      alignment: Alignment.center,
                      height: 47,
                      width: 47,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color:ApkColors.yellow, width: 0.5),
                          color: Colors.white
                      ),
                      child: Image.asset(
                        "assets/Facebook3x.png",
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text("beauty",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 10,
                      ),)

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),

                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Container(

                      alignment: Alignment.center,
                      height: 47,
                      width: 47,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color:ApkColors.yellow, width: 0.5),
                          color: Colors.white
                      ),
                      child: Image.asset(
                        "assets/Facebook3x.png",
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text("beauty",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 10,
                      ),)

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),

                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Container(

                      alignment: Alignment.center,
                      height: 47,
                      width: 47,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color:ApkColors.yellow, width: 0.5),
                          color: Colors.white
                      ),
                      child: Image.asset(
                        "assets/Facebook3x.png",
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text("beauty",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 10,
                      ),)

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),

                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Container(

                      alignment: Alignment.center,
                      height: 47,
                      width: 47,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color:ApkColors.yellow, width: 0.5),
                          color: Colors.white
                      ),
                      child: Image.asset(
                        "assets/Facebook3x.png",
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text("beauty",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 10,
                      ),)

                  ],
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
