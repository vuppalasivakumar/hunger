import 'package:get/get.dart';

import '../controllers/paratha_controller.dart';

class ParathaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ParathaController>(
      () => ParathaController(),
    );
  }
}
