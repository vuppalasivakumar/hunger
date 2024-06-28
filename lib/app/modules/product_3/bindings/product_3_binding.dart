import 'package:get/get.dart';

import '../controllers/product_3_controller.dart';

class Product3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Product3Controller>(
      () => Product3Controller(),
    );
  }
}
