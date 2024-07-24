import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_colors.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';
import 'package:hunger/app/routes/app_pages.dart';

import 'package:hunger/app/services/firebase_controller.dart';

class SignUpView extends GetView<FirebaseController> {
  SignUpView({super.key});
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Add your Details to signup',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: AppSizes.x2_12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal)),
              const SizedBox(height: AppSizes.x2_50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.x2_90),
                child: TextField(
                  controller: firstname,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSizes.x1_88),
                      ),
                      hintText: 'First Name',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: AppSizes.x2_00)),
                ),
              ),
              SizedBox(
                height: AppSizes.x2_25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.x2_90),
                child: TextField(
                  controller: lastname,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSizes.x1_88),
                      ),
                      hintText: 'Last Name',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: AppSizes.x2_00)),
                ),
              ),
              SizedBox(
                height: AppSizes.x2_25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.x2_90),
                child: TextField(
                  controller: email,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSizes.x1_88),
                      ),
                      hintText: 'Enter Your Email',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: AppSizes.x2_00)),
                ),
              ),
              SizedBox(
                height: AppSizes.x2_25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.x2_90),
                child: TextField(
                  controller: password,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSizes.x1_88),
                      ),
                      hintText: 'Enter Your Password',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: AppSizes.x2_00)),
                ),
              ),
              SizedBox(
                height: AppSizes.x2_25,
              ),
              TextButton(
                  onPressed: () {
                    controller.creatingUser(firstname.text, lastname.text,
                        email.text, password.text, context);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.rustedOrange)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.x7_75),
                    child: Text(
                      'Sign Up',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppColors.white,
                          fontSize: AppSizes.x1_88,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Montserrat'),
                    ),
                  )),
              SizedBox(
                height: AppSizes.x0_25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a user ?',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                        fontSize: AppSizes.x1_88),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.LOGIN);
                      },
                      child: Text('Login',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                  fontSize: AppSizes.x1_88,
                                  color: AppColors.linkTextColor)))
                ],
              ),
              SizedBox(
                height: AppSizes.x0_25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
