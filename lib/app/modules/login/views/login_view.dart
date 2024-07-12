import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_colors.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';
import 'package:hunger/app/routes/app_pages.dart';
import 'package:hunger/app/services/firebase_controller.dart';

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
          Container(
            color: AppColors.white,
            child: Image.asset(
              'assets/hungerlogo.jpeg',
            ),
          ),
          SizedBox(
            height: AppSizes.x1_88,
          ),
          Text(
            "India's Top Food Delivery",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontFamily: 'Montserrat',
                fontSize: AppSizes.x3_62,
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
                    fontSize: AppSizes.x3_62,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic),
              )
            ],
          ),
          SizedBox(
            height: AppSizes.x1_88,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Log in or sign up',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: AppSizes.x1_88,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal)),
            ],
          ),
          SizedBox(
            height: AppSizes.x1_88,
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
                  prefixIcon: Icon(Icons.mail),
                  hintText: 'Enter your Email',
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
              obscureText: true,
              obscuringCharacter: '*',
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppSizes.x1_88)),
                  prefixIcon: Icon(Icons.remove_red_eye),
                  hintText: 'Enter your Password',
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontFamily: 'Montserrat', fontSize: AppSizes.x2_00)),
            ),
          ),
          SizedBox(
            height: AppSizes.x1_88,
          ),
          TextButton(
              onPressed: () {
                controller.signUser(email.text, password.text, context);
              },
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(AppColors.rustedOrange)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.x7_75),
                child: Text(
                  'Login',
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
                'Create a new account ?',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    fontSize: AppSizes.x1_88),
              ),
              TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.SIGN_UP);
                  },
                  child: Text('sign up',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                          fontSize: AppSizes.x1_88,
                          color: AppColors.linkTextColor)))
            ],
          ),
          SizedBox(
            height: AppSizes.x0_25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' or ',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    fontSize: AppSizes.x1_88),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: AppSizes.x1_88),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: AppSizes.x0_25, color: AppColors.grey),
                      borderRadius: BorderRadius.circular(AppSizes.x3_12)),
                  child: Padding(
                      padding: EdgeInsets.all(AppSizes.x1_00),
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'assets/google.png',
                          height: AppSizes.x3_75,
                          width: AppSizes.x3_75,
                        ),
                      )),
                ),
                SizedBox(
                  width: AppSizes.x2_50,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: AppSizes.x0_25, color: AppColors.grey),
                      borderRadius: BorderRadius.circular(AppSizes.x3_12)),
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
            height: AppSizes.x1_25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'By continuing, you agree to our',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    fontSize: AppSizes.x1_62),
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
                    fontSize: AppSizes.x1_62),
              )
            ],
          )
        ],
      ),
    ));
  }
}
