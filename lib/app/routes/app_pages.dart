import 'package:get/get.dart';

import 'package:hunger/app/modules/home/bindings/home_binding.dart';
import 'package:hunger/app/modules/home/views/home_view.dart';
import 'package:hunger/app/modules/login/bindings/login_binding.dart';
import 'package:hunger/app/modules/login/views/login_view.dart';
import 'package:hunger/app/modules/product_1/bindings/product_1_binding.dart';
import 'package:hunger/app/modules/product_1/views/product_1_view.dart';
import 'package:hunger/app/modules/product_2/bindings/product_2_binding.dart';
import 'package:hunger/app/modules/product_2/views/product_2_view.dart';
import 'package:hunger/app/modules/product_3/bindings/product_3_binding.dart';
import 'package:hunger/app/modules/product_3/views/product_3_view.dart';
import 'package:hunger/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:hunger/app/modules/sign_up/views/sign_up_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

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
      name: _Paths.PRODUCT_1,
      page: () => Product1View(),
      binding: Product1Binding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_2,
      page: () => Product2View(),
      binding: Product2Binding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_3,
      page: () => Product3View(),
      binding: Product3Binding(),
    ),
  ];
}
