import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_colors.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';
// import 'package:hunger/app/modules/sign_up/controllers/sign_up_controller.dart';
import 'package:hunger/app/services/firebase_controller.dart';
// import 'package:hunger/app/services/auth_services.dart';
// import 'package:hunger/app/modules/sign_up/controllers/sign_up_controller.dart';
// import 'package:hunger/app/services/firbase_controller.dart';
// import 'package:hunger/app/services/firbase_controller.dart';
// import 'package:hunger/app/routes/app_pages.dart';

// import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<FirebaseController> {
  SignUpView({super.key});
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SignUpView',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontFamily: 'Montserrat',
              fontSize: 25.0,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Add your Details to signup',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal)),
              const SizedBox(height: 20.0),
              //  text Fields
              Padding(
                padding:EdgeInsets.symmetric(horizontal: AppSizes.x2_90),
                child: TextField(
                  controller: firstname,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'First Name',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.x2_90),
                child: TextField(
                  controller: lastname,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'Last Name',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.x2_90),
                child: TextField(
                  controller: email,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'Enter Your Email',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.x2_90),
                child: TextField(
                  controller: password,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      hintText: 'Enter Your Password',
                      hintStyle: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              // .......Sign up button.........//
              TextButton(
                  onPressed: () {
                    controller.creatingUser(firstname.text, lastname.text,
                        email.text, password.text);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.rustedOrange)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.x7_75),
                    child: Text(
                      'Sign Up',
                      // style: TextStyle(color: AppColors.white),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppColors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Montserrat'),
                    ),
                  )),
              SizedBox(
                height: 2.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a user ?',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                        fontSize: 15.0),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('Login',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                  fontSize: 15.0,
                                  color: AppColors.linkTextColor)))
                ],
              ),
              SizedBox(
                height: 2.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
