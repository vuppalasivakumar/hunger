// ignore_for_file: unnecessary_overrides, duplicate_ignore

import 'package:get/get.dart';

class CakesController extends GetxController {

  final count = 0.obs;
  @override
  // ignore: unnecessary_overrides
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
