import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin {
  //TODO: Implement HomeController

  final count = 0.obs;

  late TabController tabController;


  @override
  void onInit() {
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
     increment();
    });
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
