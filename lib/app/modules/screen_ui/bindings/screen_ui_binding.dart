import 'package:get/get.dart';

import '../controllers/screen_ui_controller.dart';

class ScreenUiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScreenUiController>(
      () => ScreenUiController(),
    );
  }
}
