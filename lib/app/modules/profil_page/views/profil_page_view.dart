// import 'dart:js';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
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
                color: Colors.white,
                child: ListTile(
                    leading: CircleAvatar(
                      radius: 35.0,
                      child: IconButton(
                        onPressed: () {
                          Get.toNamed(Routes.PROFILE_DETAILS);
                        },
                        icon: const Icon(Icons.person),
                        iconSize: 25,
                      ),
                    ),
                    title: const Text(
                      "Suresh",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    subtitle: TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.FOOD_ITEMS);
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "View activity",
                                  style: TextStyle(color: Colors.red),
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  size: 15.0,
                                  color: Colors.red,
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
                      width: 200,
                      child: Card(
                        color: Colors.white,
                        child: ListTile(
                          title: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            child: IconButton(
                                onPressed: () {},
                                icon:
                                    const Icon(Icons.favorite_border_outlined)),
                          ),
                          subtitle: TextButton(
                              onPressed: () {
                                 Get.toNamed(Routes.PRODUCT_DETAILS);
                              },
                              child: const Text(
                                "Favourites",
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Card(
                        color: Colors.white,
                        child: ListTile(
                          title: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.currency_rupee)),
                          ),
                          subtitle: Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: const Text("Money",
                                      style: TextStyle(color: Colors.black))),
                              IconButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.green.shade50)),
                                  onPressed: () {},
                                  icon: Row(
                                    children: [
                                      Icon(
                                        Icons.currency_rupee,
                                        size: 15,
                                        color: Colors.green[400],
                                      ),
                                      Text(
                                        "0",
                                        style:
                                            TextStyle(color: Colors.green[400]),
                                      )
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
                color: Colors.white,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.person),
                    ),
                  ),
                  title: TextButton(
                      onPressed: () {},
                      child: const Text("Your profile",
                          style: TextStyle(color: Colors.black))),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Colors.green.shade100)),
                          onPressed: () {},
                          child: const Text(
                            "64% completed",
                            style: TextStyle(color: Colors.green),
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
                color: Colors.white,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star_border_outlined),
                    ),
                  ),
                  title: TextButton(
                      onPressed: () {},
                      child: const Text("Your rating",
                          style: TextStyle(color: Colors.black))),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.grey.shade200)),
                              onPressed: () {},
                              child: const Row(
                                children: [
                                  Text('4.39'),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.amber,
                                  ),
                                ],
                              )),
                          // IconButton(onPressed: (){}, icon: Icon(Icons.star_rate),iconSize: 10,),Text("4.39",style: TextStyle(color: Colors.black),)),
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
                color: Colors.white,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text("Food orders",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.book_online_outlined))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Your orders",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.favorite_border_outlined))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Favorite orders",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.menu_book_sharp))),
                      title: TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.ADDRESS);
                          },
                          child: const Text("Address book",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {
                            Get.toNamed(Routes.ADDRESS);
                          },
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.remove_red_eye_outlined))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Hidden Restaurants",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.message))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Online ordering help",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text("Money",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.currency_rupee))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Zomato Money",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                  Icons.calendar_view_month_outlined))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Claim Gift Card",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.wallet))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Zomato Wallet",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.credit_score_outlined))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Zomato Credits",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.payment_outlined))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Payment settings",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    )
                  ],
                ),
              ),
              Card(
                  color: Colors.white,
                  child: Column(children: [
                    const ListTile(
                      title: Text("Table bookings",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Your bookings",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.message))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Table booking help",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                  ])),
              Card(
                color: Colors.white,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text("More",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.language))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Choose language",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.album_outlined))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("About",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit_square))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Send feedback",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.settings))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Settings",
                              style: TextStyle(color: Colors.black))),
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.logout_rounded))),
                      title: TextButton(
                          onPressed: () {},
                          child: const Text("Log out",
                              style: TextStyle(color: Colors.black))),
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
