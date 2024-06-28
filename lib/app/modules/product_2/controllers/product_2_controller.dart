// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class Product2Controller extends GetxController {
  // final List<Map<String, String>> productItems = [
  //   {'title': 'cheese Burger', 'image': 'assets/cheese_burger.png',},
  //   {'title': 'Chicken Burger', 'image': 'assets/chicken_burger.png',},
  //   {'title': 'Corn Burger', 'image': 'assets/corn_burger.png'},
  //   {'title': 'Egg Burger', 'image': 'assets/egg_burger.png'},
  //   {'title': 'Paneer Burger', 'image': 'assets/paneer_burger.png'},
  //   {'title': 'Veg Burger', 'image': 'assets/veg_burger.png'},
  // ].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
