// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, must_be_immutable

//import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_colors.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';
import 'package:hunger/app/routes/app_pages.dart';
//import 'package:hunger/app/core/app_config/app_sizes.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  var a = [
    {"title": "Cake", "image": "assets/cake.png"},
    {"title": "Biryani", "image": "assets/Biryani.png"},
    {"title": "Burger", "image": "assets/burger.png"},
    {"title": "Paratha", "image": "assets/paratha.png"},
    {"title": "Northindian", "image": "assets/northindian.png"},
    {"title": "Chinese", "image": "assets/chinese.png"},
    {"title": "Dosa", "image": "assets/dosa.png"},
    {"title": "Pizza", "image": "assets/pizza.png"},
    {"title": "Fried Rice", "image": "assets/fried_rice.png"},
    {"title": "Idli", "image": "assets/idli.png"},
    {"title": "Paneer", "image": "assets/paneer.png"},
    {"title": "Thali", "image": "assets/thali.png"},
    {"title": "Veg Meal", "image": "assets/veg meal.png"},
    {"title": "Chinese", "image": "assets/chinese.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CircleAvatar(
          radius: 25.0,
          backgroundImage: AssetImage('assets/hungerlogo.jpeg'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.language),
          ),
          //TextButton(onPressed: (){}, child: const Text('S'))
          FloatingActionButton(
            elevation: 0,
            onPressed: () {},
            backgroundColor: Appcolor.skyblue,
            mini: true,
            shape: const CircleBorder(),
            child: const Text(
              'S',
              style: TextStyle(color: Appcolor.black),
            ),
          ),
          const SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(Appsizes.x3_25),
              child: CupertinoSearchTextField(),
            ),
            Card(
              //elevation: Appsizes.x0_25,
              margin: const EdgeInsets.symmetric(
                horizontal: Appsizes.x3_50,
              ),
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Offers',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Appsizes.x3_50),
                    ),
                    subtitle: const Text(
                      'Upto 60% OFF, Flat Discounts,\n and other great offers',
                      style: TextStyle(fontSize: Appsizes.x2_25),
                    ),
                    trailing: Image.asset(
                      'assets/giftbox.png.gif',
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: Appsizes.x4_00),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: Appsizes.x0_25,
                  width: Appsizes.x4_25,
                  color: Appcolor.skyblue,
                ),
                const Text(
                  "WHAT'S ON YOUR MIND ?",
                  style: TextStyle(fontSize: Appsizes.x2_75),
                  //selectionColor: Appcolor.red,
                ),
                Container(
                  height: Appsizes.x0_25,
                  width: Appsizes.x4_25,
                  color: Appcolor.skyblue,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              color: Appcolor.white,
              height: 250.0,
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: a.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 0,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              child: GestureDetector(
                            onTap: () {
                              if (a[index]["title"] == "Cake") {
                                Get.toNamed(Routes.PRODUCT_1);
                              } else if (a[index]['title'] == "Burger") {
                                Get.toNamed(Routes.PRODUCT_2);
                              } else if (a[index]['title'] == "Northindian") {
                                Get.toNamed(Routes.PRODUCT_3);
                              }
                              // else if(a[index]['title'] == "Biryani"){
                              // Get.toNamed(Routes.PRODUCT_3);
                              // }
                            },
                            // child: const Text('hii')
                            child: CircleAvatar(
                              radius: 50.0,
                              backgroundImage: AssetImage(
                                a[index]["image"].toString(),
                              ),
                            ),
                          )),
                          Text(
                            a[index]["title"].toString(),
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Main Dishes",
                  style: TextStyle(fontSize: Appsizes.x3_50),
                ),
              ],
            ),
            const SizedBox(
              height: Appsizes.x3_25,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount:2 ,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    children: [
                      Card(
                          child: ListTile(
                        title: Image.asset(
                          "assets/keema_biryani.png",
                          height: 150,
                          width: 130,
                        ),onTap: (){Get.toNamed(Routes.PRODUCT_2);},
                        subtitle: const Padding(
                          padding: EdgeInsets.all(Appsizes.x0_50),
                          child: Column(
                            children: [Text("Keema Biryani"), Text('650/-')],
                          ),
                        ),
                      )),
                      Card(
                          child: ListTile(
                        title: Image.asset(
                          "assets/paneer.png",
                          height: 150,
                          width: 100,
                        ),onTap: (){},
                        subtitle: const Padding(
                          padding: EdgeInsets.all(Appsizes.x0_50),
                          child: Column(
                            children: [Text("Paneer Makhni"), Text('240/-')],
                          ),
                        ),
                      )),
                      Card(
                          child: ListTile(
                        title: Image.asset(
                          "assets/thali.png",
                          height: 150,
                          width: 100,
                        ),onTap: (){},
                        subtitle: const Padding(
                          padding: EdgeInsets.all(Appsizes.x0_50),
                          child: Column(
                            children: [Text("Thali"), Text('250/-')],
                          ),
                        ),
                      )),
                      Card(
                          child: ListTile(
                        title: Image.asset(
                          "assets/prawn_biryani.png",
                          height: 150,
                          width: 100,
                        ),onTap: (){},
                        subtitle: const Padding(
                          padding: EdgeInsets.all(Appsizes.x0_50),
                          child: Column(
                            children: [Text("Prawn Biryani"), Text('380/-')],
                          ),
                        ),
                      )),
                      Card(
                          child: ListTile(
                        title: Image.asset(
                          "assets/veg1.png",
                          height: 150,
                          width: 100,
                        ),onTap: (){},
                        subtitle: const Padding(
                          padding: EdgeInsets.all(Appsizes.x0_50),
                          child: Column(
                            children: [Text("Veg Rice"), Text('320/-')],
                          ),
                        ),
                      )),
                      Card(
                          child: ListTile(
                        title: Image.asset(
                          "assets/paneer_biryani.png",
                          height: 150,
                          width: 130,
                        ),onTap: (){},
                        subtitle: const Padding(
                          padding: EdgeInsets.all(Appsizes.x0_50),
                          child: Column(
                            children: [Text("Paneer Biryani"), Text('270/-')],
                          ),
                        ),
                      )),
                      Card(
                          child: ListTile(
                        title: Image.asset(
                          "assets/mutton_biryani.png",
                          height: 150,
                          width: 130,
                        ),onTap: (){},
                        subtitle: const Padding(
                          padding: EdgeInsets.all(Appsizes.x0_50),
                          child: Column(
                            children: [Text("Mutton Biryani"), Text('50/-')],
                          ),
                        ),
                      )),
                      Card(
                          child: ListTile(
                        title: Image.asset(
                          "assets/dum_biryani.png",
                          height: 150,
                          width: 130,
                        ),onTap: (){},
                        subtitle: const Padding(
                          padding: EdgeInsets.all(Appsizes.x0_50),
                          child: Column(
                            children: [Text("Dum Biryani"), Text('450/-')],
                          ),
                        ),
                      )),
                      Card(
                          child: ListTile(
                        title: Image.asset(
                          "assets/fried_rice.png",
                          height: 150,
                          width: 130,
                        ),onTap: (){},
                        subtitle: const Padding(
                          padding: EdgeInsets.all(Appsizes.x0_50),
                          child: Column(
                            children: [Text("Fried Rice"), Text('190/-')],
                          ),
                        ),
                      )),
                      Card(
                          child: ListTile(
                        title: Image.asset(
                          "assets/northindian.png",
                          height: 150,
                          width: 130,
                        ),onTap: (){},
                        subtitle: const Padding(
                          padding: EdgeInsets.all(Appsizes.x0_50),
                          child: Column(
                            children: [
                              Text("NorthIndian Thali"),
                              Text('360/-')
                            ],
                          ),
                        ),
                      )),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: Appsizes.x0_25,
                  width: Appsizes.x4_25,
                  color: Appcolor.skyblue,
                ),
                const Text(
                  "ALL RESTAURANTS",
                  style: TextStyle(
                    fontSize: Appsizes.x2_75,
                  ),
                ),
                Container(
                  height: Appsizes.x0_25,
                  width: Appsizes.x4_25,
                  color: Appcolor.skyblue,
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Card(
                        // elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.sort),
                                  //const SizedBox(width: 8.0,),
                                  const Text(
                                    'Sort',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_drop_down)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Favourites',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.favorite_border_outlined)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Pure Veg',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons
                                        .check_box_outline_blank_outlined)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      margin: const EdgeInsets.all(10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Cuisines',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.arrow_drop_down)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      margin: const EdgeInsets.all(10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Rating',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.star_border)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Chip(
                  //   label: TextButton(onPressed:(){} ,child:const Row(mainAxisSize: MainAxisSize.min,children: [
                  //    Text("REQ"),
                  //    Icon(Icons.add),
                  // ],)))

                  // OutlinedButton(onPressed: (){}, child:Row(children: [Text('cuisines'),Icon(Icons.arrow_drop_down)],),style: const ButtonStyle(backgroundColor:MaterialStatePropertyAll(Appcolor.skyblue),maximumSize: MaterialStatePropertyAll(5) ))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 14.0, bottom: 10.0),
              child: Text(
                'Restaurents delivering to you',
                style:
                    TextStyle(fontSize: Appsizes.x2_75, color: Appcolor.grey),
              ),
            ),
            const Text('Featured', style: TextStyle(color: Appcolor.grey)),
            Column(
              children: [
                const Padding(padding: EdgeInsets.all(Appsizes.x1_25)),
                Card(
                    child: Column(
                  children: [
                    CarouselSlider(
                        items: [
                          //kfc image1
                          GestureDetector(
                            child: Container(
                                child: Image.asset('assets/kfccombo.png')),
                            onTap: () {
                              //  Get.toNamed(Routes.''),
                            },
                          ),

                          //kfc image2
                          GestureDetector(
                            child:
                                Container(child: Image.asset('assets/kfc.png')),
                            onTap: () {
                              //  Get.toNamed(Routes.''),
                            },
                          ),

                          //kfc image3
                          GestureDetector(
                            child: Container(
                              child: Image.asset('assets/kgccombo2.png'),
                            ),
                            onTap: () {
                              //  Get.toNamed(Routes.''),
                            },
                          ),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          enableInfiniteScroll: true,
                          // pauseAutoPlayInFiniteScroll: false,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 150),
                          viewportFraction: 1.5,
                        )),
                    ListTile(
                      title: const Text(
                        'KFC',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '4.2',
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.white,
                                size: 15.0,
                              ),
                            ],
                          )),
                      subtitle: const Row(
                        children: [
                          Text('KFC .'),
                          Icon(
                            Icons.currency_rupee,
                            size: 15.0,
                          ),
                          Text('300 for one'),
                        ],
                      ),
                    ),
                  ],
                )),

                //2nd carousel
                Card(
                    child: Column(
                  children: [
                    CarouselSlider(
                        items: [
                          //bawarachi image1

                          GestureDetector(
                              onTap: () {
                                //  Get.toNamed(Routes.''),
                              },
                              child: Container(
                                  child: Image.asset('assets/biryani1.jpg'))),

                          //bawarachi image2

                          GestureDetector(
                            onTap: () {
                              //  Get.toNamed(Routes.''),
                            },
                            child: Container(
                                child: Image.asset('assets/biryani4.jpg')),
                          ),

                          //bawarachi image3
                          GestureDetector(
                            onTap: () {
                              //  Get.toNamed(Routes.''),
                            },
                            child: Container(
                                child: Image.asset('assets/biryani7.png',
                                    fit: BoxFit.fill)),
                          )
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 150),
                          viewportFraction: 1.8,
                        )),
                    ListTile(
                      title: const Text(
                        'BHAWARCHI',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '4.0',
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.white,
                                size: 15.0,
                              ),
                            ],
                          )),
                      subtitle: const Row(
                        children: [
                          Text('Biryani . Non Veg .'),
                          Row(
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                size: 15.0,
                              ),
                            ],
                          ),
                          Text('240 for one'),
                        ],
                      ),
                    ),
                  ],
                )),

                //   3rd carousel

                Card(
                    child: Column(
                  children: [
                    CarouselSlider(
                        items: [
                          //platform image1
                          GestureDetector(
                            onTap: () {
                              //  Get.toNamed(Routes.''),
                            },
                            child: Container(
                                child: Image.asset('assets/veg1.png')),
                          ),
                          //platform img2
                          GestureDetector(
                            onTap: () {
                              //  Get.toNamed(Routes.''),
                            },
                            child: Container(
                                child: Image.asset('assets/veg2.png')),
                          ),
                          //platform img3
                          GestureDetector(
                            onTap: () {
                              // Get.toNamed(Routes.''),
                            },
                            child: Container(
                              child: Image.asset('assets/veg3.jpg'),
                            ),
                          )
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 150),
                          viewportFraction: 1.5,
                        )),
                    ListTile(
                      title: const Text(
                        'PLATFORM 65',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '4.1',
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.white,
                                size: 15.0,
                              ),
                            ],
                          )),
                      subtitle: const Row(
                        children: [
                          Text('Birayani . Pure veg .'),
                          Icon(
                            Icons.currency_rupee,
                            size: 15.0,
                          ),
                          Text('120 for one'),
                        ],
                      ),
                    ),
                  ],
                )),

                //4th courasel

                Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        CarouselSlider(
                            items: [
                              //tiffin img1
                              GestureDetector(
                                onTap: () {
                                  //  Get.toNamed(Routes.''),
                                },
                                child: Container(
                                    child: Image.asset('assets/dosa.jpg')),
                              ),
                              //tiffin img2
                              GestureDetector(
                                onTap: () {
                                  //  Get.toNamed(Routes.''),
                                },
                                child: Container(
                                    child: Image.asset('assets/Idli1.JPG')),
                              ),
                              //tiffin img3
                              GestureDetector(
                                onTap: () {
                                  //  Get.toNamed(Routes.''),
                                },
                                child: Container(
                                  child: Image.asset('assets/puri.png'),
                                ),
                              )
                            ],
                            options: CarouselOptions(
                              autoPlay: true,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 150),
                              viewportFraction: 1.5,
                            )),
                        ListTile(
                          title: const Text(
                            'TIFFINS KITCHEN ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Container(
                              padding: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    '3.9',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.white,
                                    size: 15.0,
                                  ),
                                ],
                              )),
                          subtitle: const Row(
                            children: [
                              Text('Tiffins'),
                              Icon(
                                Icons.currency_rupee,
                                size: 15.0,
                              ),
                              Text('60 for plate'),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
