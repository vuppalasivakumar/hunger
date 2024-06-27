import 'package:get/get.dart';

import '../controllers/combinational_products_controller.dart';

class CombinationalProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CombinationalProductsController>(
      () => CombinationalProductsController(),
    );
  }
}
