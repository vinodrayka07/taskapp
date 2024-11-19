import 'package:get/get.dart';

import '../controllers/onboarding_3screen_controller.dart';

class Onboarding3screenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Onboarding3screenController>(
      () => Onboarding3screenController(),
    );
  }
}
