import 'package:get/get.dart';

import 'package:hunger/app/modules/address/bindings/address_binding.dart';
import 'package:hunger/app/modules/address/views/address_view.dart';
import 'package:hunger/app/modules/food_items/bindings/food_items_binding.dart';
import 'package:hunger/app/modules/food_items/views/food_items_view.dart';
import 'package:hunger/app/modules/home/bindings/home_binding.dart';
import 'package:hunger/app/modules/home/views/home_view.dart';
import 'package:hunger/app/modules/login/bindings/login_binding.dart';
import 'package:hunger/app/modules/login/views/login_view.dart';
import 'package:hunger/app/modules/product_details/bindings/product_details_binding.dart';
import 'package:hunger/app/modules/product_details/views/product_details_view.dart';
import 'package:hunger/app/modules/profil_page/bindings/profil_page_binding.dart';
import 'package:hunger/app/modules/profil_page/views/profil_page_view.dart';
import 'package:hunger/app/modules/profile_details/bindings/profile_details_binding.dart';
import 'package:hunger/app/modules/profile_details/views/profile_details_view.dart';
import 'package:hunger/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:hunger/app/modules/sign_up/views/sign_up_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PROFIL_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL_PAGE,
      page: () => const ProfilPageView(),
      binding: ProfilPageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_DETAILS,
      page: () => const ProfileDetailsView(),
      binding: ProfileDetailsBinding(),
    ),
    GetPage(
      name: _Paths.FOOD_ITEMS,
      page: () => const FoodItemsView(),
      binding: FoodItemsBinding(),
    ),
    GetPage(
      name: _Paths.ADDRESS,
      page: () =>const AddressView(),
      binding: AddressBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAILS,
      page: () => ProductDetailsView(),
      binding: ProductDetailsBinding(),
    ),
  ];
}
