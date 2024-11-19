import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:taskapk/app/modules/home/views/home_view.dart';

class MainScreenController extends GetxController {
  //TODO: Implement MainScreenController

  Map<String, String?> data = Get.parameters;

  final count = 0.obs;

  int indexCategory = 1;
  int selectedPage = 0;

  final pageOptions = [
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ];
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


  void handleIndexChanged(int i) {

    selectedPage = i;
    debugPrintStack(label: i.toString());
    increment();

  }

  void increment() => count.value++;
}
