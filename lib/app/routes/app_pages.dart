import 'package:get/get.dart';

import 'package:hunger/app/modules/biryani/bindings/biryani.dart';
import 'package:hunger/app/modules/biryani/views/biryani.dart';
import 'package:hunger/app/modules/cakes/bindings/cakes_binding.dart';
import 'package:hunger/app/modules/cakes/views/cakes_view.dart';
import 'package:hunger/app/modules/home/bindings/home_binding.dart';
import 'package:hunger/app/modules/home/views/home_view.dart';
import 'package:hunger/app/modules/login/bindings/login_binding.dart';
import 'package:hunger/app/modules/login/views/login_view.dart';
import 'package:hunger/app/modules/paratha/bindings/paratha_binding.dart';
import 'package:hunger/app/modules/paratha/views/paratha_view.dart';
import 'package:hunger/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:hunger/app/modules/sign_up/views/sign_up_view.dart';

// ignore_for_file: constant_identifier_names, prefer_const_constructors

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PARATHA;

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
    GetPage(
      name: _Paths.COMBINATIONAL_PRODUCTS,
      page: () => CombinationalProductsView(),
      binding: CombinationalProductsBinding(),
    ),
    GetPage(
      name: _Paths.CAKES,
      page: () => CakesView(),
      binding: CakesBinding(),
    ),
    GetPage(
      name: _Paths.PARATHA,
      page: () => ParathaView(),
      binding: ParathaBinding(),
    ),
  ];
}
