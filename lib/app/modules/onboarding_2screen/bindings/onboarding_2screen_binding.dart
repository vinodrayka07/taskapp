import 'package:get/get.dart';

import '../controllers/onboarding_2screen_controller.dart';

class Onboarding2screenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Onboarding2screenController>(
      () => Onboarding2screenController(),
    );
  }
}
