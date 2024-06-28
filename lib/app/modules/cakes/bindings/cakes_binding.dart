import 'package:get/get.dart';

import '../controllers/cakes_controller.dart';

class CakesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CakesController>(
      () => CakesController(),
    );
  }
}
