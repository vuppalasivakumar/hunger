// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class Product1Controller extends GetxController {
  final List<Map<String, String>> productItems = [
    {'title': 'Cake', 'image': 'assets/cake.png'},
    {'title': 'Black Forest', 'image': 'assets/blackforest (1).png'},
    {'title': 'Chocolate', 'image': 'assets/choco_cake (1).png'},
    {'title': 'Pineapple', 'image': 'assets/pinapple (1).png'},
    {'title': 'Mango', 'image': 'assets/mango (1).png'},
 // {'title': 'walnut', 'image': 'assets/walnut_1.webp'},
  ].obs;

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
