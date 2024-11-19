import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../color/ApkColors.dart';
import '../../screen_ui/views/screen_ui_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    Get.lazyPut(() => HomeController());
    return Obx(() {
      controller.count.value;
      return Scaffold(
        backgroundColor: Colors.white,
          appBar: PreferredSize(
            //preferredSize:  Size.fromHeight(80.0)
            preferredSize: const Size.fromHeight(200),
            child: Container(
              margin: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(
                              'assets/menu.png',
                              height: 30,
                              width: 30,
                            ),
                            onPressed: () {
                              //controller.openDrawer();
                            },
                          ),
                          Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                "assets/appicon.png",
                                width: 65,
                                height: 35,
                              )),
                          Container(
                              //margin: EdgeInsets.only(left: 50),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.black, width: 0.5),
                                //color: Colors.cyan,
                              ),
                              padding: EdgeInsets.all(0.5),
                              alignment: Alignment.center,
                              child: const Icon(Icons.search,
                                  color: Colors.black))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: const Text(
                      "Hi vinod rayka...",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: const Text(
                      "What are you looking \n for today?",
                      maxLines: 2,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 24),
                    ),
                  ),

                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/banner.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 210,
                    )),
                TabBar(
                    controller: controller.tabController,
                    dividerColor: Colors.transparent,
                     indicatorColor: ApkColors.yellow,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontSize: 10,
                    ),
                    tabs: [
                      Tab(
                        text: "recommend",
                      ),
                      Tab(
                        text: "cell phone",
                      ),
                      Tab(
                        text: "Car Products",
                      ),
                      Tab(
                        text: "department store",
                      )
                    ]),
                SizedBox(
                  height: 250,
                  child:
                      TabBarView(controller: controller.tabController, children: [
                    ScreenUiView(
                      tabController: controller.tabController,
                    ),
                    ScreenUiView(
                      tabController: controller.tabController,
                    ),
                    ScreenUiView(
                      tabController: controller.tabController,
                    ),
                    ScreenUiView(
                      tabController: controller.tabController,
                    ),
                  ]),
                )
              ],
            ),
          ));
    });
  }
}
