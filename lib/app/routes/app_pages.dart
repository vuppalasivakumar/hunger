import 'package:get/get.dart';


import 'package:hunger/app/modules/home/bindings/home_binding.dart';
import 'package:hunger/app/modules/home/views/home_view.dart';
import 'package:hunger/app/modules/login/bindings/login_binding.dart';
import 'package:hunger/app/modules/login/views/login_view.dart';
import 'package:hunger/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:hunger/app/modules/sign_up/views/sign_up_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
  ];
}
