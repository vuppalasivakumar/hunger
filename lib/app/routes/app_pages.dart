import 'package:get/get.dart';

import 'package:hunger/app/modules/home/bindings/home_binding.dart';
import 'package:hunger/app/modules/home/views/home_view.dart';
import 'package:hunger/app/modules/product_details/bindings/product_details_binding.dart';
import 'package:hunger/app/modules/product_details/views/product_details_view.dart';
import 'package:hunger/app/modules/profil_page/bindings/profil_page_binding.dart';
import 'package:hunger/app/modules/profil_page/views/profil_page_view.dart';
import 'package:hunger/app/modules/profile_details/bindings/profile_details_binding.dart';
import 'package:hunger/app/modules/profile_details/views/profile_details_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.PROFIL_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
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
      name: _Paths.PRODUCT_DETAILS,
      page: () => const ProductDetailsView(),
      binding: ProductDetailsBinding(),
    ),
  ];
}
