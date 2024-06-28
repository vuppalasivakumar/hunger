import 'package:get/get.dart';

import '../controllers/product_1_controller.dart';

class Product1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Product1Controller>(
      () => Product1Controller(),
    );
  }
}
