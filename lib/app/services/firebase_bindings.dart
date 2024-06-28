import 'package:get/get.dart';
import 'package:hunger/app/services/firebase_controller.dart';

class FirebaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseController>(
      () => FirebaseController(),
    );
  }
}