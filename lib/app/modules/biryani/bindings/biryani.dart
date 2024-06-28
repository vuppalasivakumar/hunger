import 'package:get/get.dart';

import '../controllers/biryani.dart';

class CombinationalProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CombinationalProductsController>(
      () => CombinationalProductsController(),
    );
  }
}
