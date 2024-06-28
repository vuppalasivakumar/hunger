// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_colors.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';
import 'package:hunger/app/routes/app_pages.dart';
import 'package:hunger/app/services/firebase_controller.dart';

// import '../controllers/login_controller.dart';

class LoginView extends GetView<FirebaseController> {
  LoginView({super.key});
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //........ hunger image ....//
          Container(
            color: AppColors.white,
            child: Image.asset(
              'assets/hungerlogo.jpeg',
              // fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          // .....Heading texts.....//
          Text(
            "India's Top Food Delivery",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontFamily: 'Montserrat',
                fontSize: 29.0,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "and Dining App",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontFamily: 'Montserrat',
                    fontSize: 29.0,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic),
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          // ......login and signup text........//
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Log in or sign up',
                  // style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal)),
            ],
          ),

          SizedBox(
            height: 15.0,
          ),

          // ......text fields......//
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.x2_90),
            child: TextField(
              controller: email,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  prefixIcon: Icon(Icons.mail),
                  hintText: 'Enter your Email',
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
              obscureText: true,
              obscuringCharacter: '*',
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  prefixIcon: Icon(Icons.remove_red_eye),
                  hintText: 'Enter your Password',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontFamily: 'Montserrat', fontSize: 16.0)),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),

          // .......login button.........//
          TextButton(
              onPressed: () {
                controller.signUser(email.text, password.text);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(AppColors.rustedOrange)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.x7_75),
                child: Text(
                  'Login',
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
          // ........sign up button.......//
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Create a new account ?',
                // style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0),
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    fontSize: 15.0),
              ),
              TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.SIGN_UP);
                  },
                  child: Text('sign up',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          color: AppColors.linkTextColor)
                      // TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0),
                      ))
            ],
          ),
          SizedBox(
            height: 2.0,
          ),
          //.......or text.....//
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' or ',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    fontSize: 15.0),
              ),
            ],
          ),
          //  ........sign up with Google or more.......//
          Padding(
            padding: EdgeInsets.only(bottom: AppSizes.x1_88),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: AppColors.grey),
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Padding(
                      padding:EdgeInsets.all(AppSizes.x1_00),
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/google.png',
                          height: 30,
                          width: 30,
                        ),
                      )),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: AppColors.grey),
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Padding(
                    padding: EdgeInsets.all(AppSizes.x1_25),
                    child: GestureDetector(
                        onTap: () {}, child: Icon(Icons.more_horiz_rounded)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          // .....terms and policy......//
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'By continuing, you agree to our',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    fontSize: 13.0),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Terms of Service Privacy Policy Content Policy',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Montserrat',
                    fontSize: 13.0),
              )
            ],
          )
        ],
      ),
    ));
  }
}
