import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hunger/app/routes/app_pages.dart';

class FirebaseController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // creating user
  void creatingUser(
      String firstname, String lastname, String email, String password) async {
    await _auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((onValue) {
      Get.toNamed(Routes.LOGIN);
    }).catchError((onError) {
      Get.snackbar('Error While Creating Account', onError.message);
    });
  }

  // Sign in user
  void signUser(String email, String password) async {
    await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((onValue) {
      Get.toNamed(Routes.HOME);
    }).catchError((onError) {
      Get.snackbar("Login Failed", onError.message);
    });
  }

  // Sign Out
  void signOutUser() {}
}
