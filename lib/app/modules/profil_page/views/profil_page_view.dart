import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_colors.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';
import 'package:hunger/app/routes/app_pages.dart';

import '../controllers/profil_page_controller.dart';

class ProfilPageView extends GetView<ProfilPageController> {
  const ProfilPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                color: AppColors.white,
                child: ListTile(
                    leading: CircleAvatar(
                      radius: AppSizes.x4_37,
                      child: IconButton(
                        onPressed: () {
                          Get.toNamed(Routes.PROFILE_DETAILS);
                        },
                        icon: const Icon(Icons.person),
                        iconSize: AppSizes.x3_12,
                      ),
                    ),
                    title: Text(
                      "Suresh",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold, fontSize: AppSizes.x2_5),
                    ),
                    subtitle: TextButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(right: AppSizes.x2_5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "View activity",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: AppColors.rustedOrange),
                                ),
                                const Icon(
                                  Icons.arrow_right,
                                  size: AppSizes.x1_87,
                                  color: AppColors.rustedOrange,
                                )
                              ],
                            ),
                          ),
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: AppSizes.x25_00,
                      child: Card(
                        color: AppColors.white,
                        child: ListTile(
                          title: CircleAvatar(
                            backgroundColor: AppColors.white,
                            child: IconButton(
                                onPressed: () {},
                                icon:
                                    const Icon(Icons.favorite_border_outlined)),
                          ),
                          subtitle: TextButton(
                              onPressed: () {
                                Get.toNamed(Routes.PRODUCT_DETAILS);
                              },
                              child: Text(
                                "Favourites",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: AppColors.blackColor),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: AppSizes.x25_00,
                      child: Card(
                        color: AppColors.white,
                        child: ListTile(
                          title: CircleAvatar(
                            backgroundColor: AppColors.white,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.currency_rupee)),
                          ),
                          subtitle: Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Money",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(color: AppColors.blackColor),
                                  )),
                              IconButton(
                                  style: const ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          AppColors.oliveGreenShade)),
                                  onPressed: () {},
                                  icon: Row(
                                    children: [
                                      const Icon(Icons.currency_rupee,
                                          size: AppSizes.x1_87,
                                          color: AppColors.rupeeColor),
                                      Text("0",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(
                                                  color: AppColors.rupeeColor))
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                color: AppColors.white,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: AppColors.grey,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.person),
                    ),
                  ),
                  title: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Your profile",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: AppColors.blackColor),
                      )),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  AppColors.oliveGreenShade)),
                          onPressed: () {},
                          child: Text(
                            "64% completed",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.oliveGreen),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ],
                  ),
                ),
              ),
              Card(
                color: AppColors.white,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: AppColors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star_border_outlined),
                    ),
                  ),
                  title: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Your rating",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: AppColors.blackColor),
                      )),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          TextButton(
                              style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      AppColors.white)),
                              onPressed: () {},
                              child: const Row(
                                children: [
                                  Text('4.39'),
                                  Icon(
                                    Icons.star,
                                    size: AppSizes.x1_87,
                                    color: AppColors.ratingColor,
                                  ),
                                ],
                              )),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ],
                  ),
                ),
              ),
              Card(
                color: AppColors.white,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text("Food orders",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.book_online_outlined))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Your orders",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.favorite_border_outlined))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Favorite orders",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.menu_book_sharp))),
                      title: TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.ADDRESS);
                          },
                          child: Text(
                            "Address book",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {
                            Get.toNamed(Routes.ADDRESS);
                          },
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.remove_red_eye_outlined))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Hidden Restaurants",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.message))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Online ordering help",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    )
                  ],
                ),
              ),
              Card(
                color: AppColors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Money",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.currency_rupee))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Zomato Money",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                  Icons.calendar_view_month_outlined))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Claim Gift Card",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.wallet))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Zomato Wallet",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.credit_score_outlined))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Zomato Credits",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.payment_outlined))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Payment settings",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    )
                  ],
                ),
              ),
              Card(
                  color: AppColors.white,
                  child: Column(children: [
                    const ListTile(
                      title: Text("Table bookings",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Your bookings",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.message))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Table booking help",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                  ])),
              Card(
                color: AppColors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("More",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.language))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Choose language",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.album_outlined))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "About",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit_square))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Send feedback",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.settings))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Settings",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.white,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.logout_rounded))),
                      title: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Log out",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(color: AppColors.blackColor),
                          )),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
