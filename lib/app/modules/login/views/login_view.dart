// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_colors.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

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

          // Container(
          //     height: 50.0,
          //     width: 70.0,
          //     decoration: BoxDecoration(border: Border.all(width: 1.0)),
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         // mainAxisSize: MainAxisSize.min,
          //         children: [
          //           Expanded(child: Image.asset('assets/indianflag.png')),
          //           Icon(Icons.arrow_drop_down_sharp),
          //         ],
          //       ),
          //     )),

          // ......text fields......//
          Padding(
            padding: AppSizes.pageHorizontal,
            child: TextField(
              controller: null,
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
            padding: AppSizes.pageHorizontal,
            child: TextField(
              controller: null,
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
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(AppColors.rustedOrange)),
              child: Padding(
                padding: AppSizes.buttonHorizontal,
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
                  onPressed: () {},
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
            padding: AppSizes.onlyTopBottom,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: AppColors.grey),
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Padding(
                      padding: AppSizes.smallAll,
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
                    padding: AppSizes.iconPadding,
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
