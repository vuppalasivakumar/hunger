import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_assets.dart';
import 'package:hunger/app/core/app_config/app_colors.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';
import 'package:hunger/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

// ignore: must_be_immutable
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

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CircleAvatar(
          radius: Appsizes.x4_00,
          child: Image.asset(Appassets.hungerlogo),
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
            width: Appsizes.x1_50,
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
              height: Appsizes.x1_50,
            ),
            Container(
              color: Appcolor.white,
              height: Appsizes.x4_75,
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
                      padding: const EdgeInsets.all(Appsizes.x1_25),
                      child: Column(
                        children: [
                          Expanded(
                              child: GestureDetector(
                            child: CircleAvatar(
                              radius: 50.0,
                              backgroundImage: AssetImage(
                                a[index]["image"].toString(),
                              ),
                            ),
                          )),
                          Text(
                            a[index]["title"].toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Main Dishes",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 22),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Appcolor.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    children: [
                      Card(
                          child: ListTile(
                        title: Image.asset(
                          Appassets.keemabiryani,
                          height: 150,
                          width: 130,
                        ),
                        onTap: () {
                          Get.toNamed(Routes.PRODUCT_2);
                        },
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
                          Appassets.paneer,
                          height: 150,
                          width: 100,
                        ),
                        onTap: () {},
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
                          Appassets.thali,
                          height: 150,
                          width: 100,
                        ),
                        onTap: () {},
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
                          Appassets.prawnbiryani,
                          height: 150,
                          width: 100,
                        ),
                        onTap: () {},
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
                          Appassets.veg1,
                          height: 150,
                          width: 100,
                        ),
                        onTap: () {},
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
                          Appassets.paneerbiryani,
                          height: 150,
                          width: 130,
                        ),
                        onTap: () {},
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
                          Appassets.muttonbiryani,
                          height: 150,
                          width: 130,
                        ),
                        onTap: () {},
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
                          Appassets.dumbiryani,
                          height: 150,
                          width: 130,
                        ),
                        onTap: () {},
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
                          Appassets.friedrice,
                          height: 150,
                          width: 130,
                        ),
                        onTap: () {},
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
                          Appassets.northindian,
                          height: 150,
                          width: 130,
                        ),
                        onTap: () {},
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
                Text("ALL RESTAURANTS",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 18,
                        )),
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
                    padding: const EdgeInsets.all(Appsizes.x1_25),
                    child: Container(
                      color: Appcolor.white,
                      child: Card(
                        // elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: Appsizes.x1_25),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.sort),
                                  //const SizedBox(width: 8.0,),
                                  Text('Sort',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontSize: 15,
                                          )),
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
                    color: Appcolor.white,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Appsizes.x1_25),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Favourites',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(fontSize: 15),
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
                    color: Appcolor.white,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Appsizes.x1_25),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Pure Veg',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(fontSize: 15),
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
                    color: Appcolor.white,
                    child: Card(
                      margin: const EdgeInsets.all(Appsizes.x1_50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Appsizes.x1_25),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Text('Cuisines',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(fontSize: 15)),
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
                    color: Appcolor.white,
                    child: Card(
                      margin: const EdgeInsets.all(Appsizes.x1_50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Appsizes.x1_25),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Text('Rating',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(fontSize: 15)),
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: Appsizes.x2_25, bottom: Appsizes.x1_50),
              child: Text('Restaurents delivering to you',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: Appsizes.x2_75, color: Appcolor.grey)),
            ),
            Text('Featured',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Appcolor.grey)),
            Column(
              children: [
                const Padding(padding: EdgeInsets.all(Appsizes.x1_25)),
                //1st carousel start//
                Card(
                    child: Column(
                  children: [
                    CarouselSlider(
                        items: [
                          //kfc image1 start//
                          GestureDetector(
                            child: Container(
                                color: Appcolor.white,
                                child: Image.asset(Appassets.kfccombo)),
                            onTap: () {},
                          ),

                          //kfc image2 start//
                          GestureDetector(
                            child: Container(
                                color: Appcolor.white,
                                child: Image.asset(Appassets.kfc)),
                            onTap: () {},
                          ),

                          //kfc image3 start//
                          GestureDetector(
                            child: Container(
                              color: Appcolor.white,
                              child: Image.asset(Appassets.kfccombo2),
                            ),
                            onTap: () {},
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
                      title: Text('KFC',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold)),
                      trailing: Container(
                          padding: const EdgeInsets.all(Appsizes.x0_75),
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

                //2nd carousel start
                Card(
                    child: Column(
                  children: [
                    CarouselSlider(
                        items: [
                          //bawarachi image1 start//

                          GestureDetector(
                              onTap: () {},
                              child: Container(
                                  color: Appcolor.white,
                                  child: Image.asset(Appassets.biryani1))),

                          //bawarachi image2 start//

                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                color: Appcolor.white,
                                child: Image.asset(Appassets.biryani4)),
                          ),

                          //bawarachi image3 start//
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                color: Appcolor.white,
                                child: Image.asset(Appassets.biryani7,
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
                      title: Text('BHAWARCHI',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold)),
                      trailing: Container(
                          padding: const EdgeInsets.all(Appsizes.x0_75),
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

                //   3rd carousel start//

                Card(
                    child: Column(
                  children: [
                    CarouselSlider(
                        items: [
                          //platform image1 start
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                color: Appcolor.white,
                                child: Image.asset(Appassets.veg1)),
                          ),
                          //platform img2 start//
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                color: Appcolor.white,
                                child: Image.asset(Appassets.veg2)),
                          ),
                          //platform img3 start//
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              color: Appcolor.white,
                              child: Image.asset(Appassets.veg3),
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
                      title: Text('PLATFORM 65',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold)),
                      trailing: Container(
                          padding: const EdgeInsets.all(Appsizes.x0_75),
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

                //4th courasel start//

                Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        CarouselSlider(
                            items: [
                              //tiffin img1 start //
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                    color: Appcolor.white,
                                    child: Image.asset(Appassets.dosa)),
                              ),
                              //tiffin img2 start//
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                    color: Appcolor.white,
                                    child: Image.asset(Appassets.idli)),
                              ),
                              // tiffin img3 start//
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  color: Appcolor.white,
                                  child: Image.asset(Appassets.puri),
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
                          title: Text('TIFFINS KITCHEN ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Colors.black,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold)),
                          trailing: Container(
                              padding: const EdgeInsets.all(Appsizes.x0_75),
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
