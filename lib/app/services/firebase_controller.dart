import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_colors.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';
import 'package:hunger/app/routes/app_pages.dart';

class FirebaseController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  void creatingUser(String firstname, String lastname, String email,
      String password, context) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((onValue) => Get.snackbar("", "Signup Successful!"));
      Get.toNamed(Routes.LOGIN);
    } catch (e) {
      Get.snackbar("Title", "Messsage",
          titleText: Text(
            'Error!',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.blackColor,
                fontSize: AppSizes.x2_00,
                fontWeight: FontWeight.w800,
                fontFamily: 'Montserrat'),
          ),
          messageText: Text(
            '"Oops! It looks like you entered the information incorrectly"',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.blackColor,
                fontSize: AppSizes.x1_62,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat'),
          ),
          snackPosition: SnackPosition.BOTTOM,
          overlayBlur: AppSizes.x0_25,
          margin: EdgeInsets.all(AppSizes.x1_62),
          backgroundColor: AppColors.skyBlue);
    }
  }

  void signUser(String email, String password, context) async {
    try {
      await _auth
          .signInWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then((onValue) => Get.snackbar("Title", "Messsage",
              titleText: Text(
                'Welcome',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.blackColor,
                    fontSize: AppSizes.x2_00,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Montserrat'),
              ),
              messageText: Text(
                'Login successful!',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.blackColor,
                    fontSize: AppSizes.x1_62,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat'),
              ),
              snackPosition: SnackPosition.BOTTOM,
              overlayBlur: AppSizes.x0_25,
              margin: EdgeInsets.all(AppSizes.x1_62),
              backgroundColor: AppColors.skyBlue));
      Get.toNamed(Routes.HOME);
    } catch (error) {
      Get.snackbar("Title", "Messsage",
          titleText: Text(
            'Error!',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.blackColor,
                fontSize: AppSizes.x2_00,
                fontWeight: FontWeight.w800,
                fontFamily: 'Montserrat'),
          ),
          messageText: Text(
            'Oops! It looks like your login Details are incorrect',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.blackColor,
                fontSize: AppSizes.x1_62,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat'),
          ),
          snackPosition: SnackPosition.BOTTOM,
          overlayBlur: AppSizes.x0_25,
          margin: EdgeInsets.all(AppSizes.x1_62),
          backgroundColor: AppColors.skyBlue);
    }
  }

  void signOutUser() {
    _auth.signOut();
  }
}
