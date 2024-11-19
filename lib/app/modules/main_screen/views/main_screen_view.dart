import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../color/ApkColors.dart';
import '../../home/views/home_view.dart';
import '../controllers/main_screen_controller.dart';

class MainScreenView extends GetView<MainScreenController> {
  const MainScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    controller.count.value;
    return Scaffold(
      bottomNavigationBar: Obx(() {
        controller.count.value;
        return SizedBox(
          height: 100,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: controller.handleIndexChanged,
            currentIndex: controller.selectedPage,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            unselectedItemColor: Color(0X601C1C1C),
            selectedItemColor: ApkColors.yellowBottom,
            // unselectedLabelStyle: unselectedLabelStyle,
            // selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.home,
                    size: 30.0,
                  ),
                ),
                label: 'Home',
                backgroundColor: ApkColors.backgroundColor,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                ),
                label: 'Explore',
                backgroundColor: ApkColors.backgroundColor,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    CupertinoIcons.heart,
                    size: 30.0,
                  ),
                ),
                label: 'Favorites',
                backgroundColor: ApkColors.backgroundColor,
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    CupertinoIcons.profile_circled,
                    size: 30.0,
                  ),
                ),
                label: 'Profile',
                backgroundColor: ApkColors.backgroundColor,
              ),
            ],
          ),
        );
      }),
      body: Obx(() {
        controller.count.value;
        return IndexedStack(
          index: controller.selectedPage,
          children: const [
            HomeView(),
            HomeView(),
            HomeView(),
            HomeView(),
          ],
        );
      }),
    );
  }
}
