// ignore_for_file: use_key_in_widget_constructors, unnecessary_import, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';
import 'package:hunger/app/routes/app_pages.dart';

import '../controllers/product_1_controller.dart';

class Product1View extends GetView<Product1Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.toNamed(Routes.HOME);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const CupertinoSearchTextField(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                child: const Column(
                  children: [
                    Text(
                      'Cakes',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                    "assets/blackforest-_1_.png",
                    height: 150,
                    width: 130,
                  ),
                  onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Black Forest"), Text('350/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/chocolatecake.png",
                    height: 150,
                    width: 100,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Chocolate cake"), Text('240/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/pinapple (1).png",
                    height: 150,
                    width: 100,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Pineapple"), Text('220/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/choco_cake (1).png",
                    height: 150,
                    width: 100,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Vanilla Choco"), Text('320/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/mango (1).png",
                    height: 150,
                    width: 100,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Mango"), Text('220/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/cheesecakepastry.png",
                    height: 150,
                    width: 130,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Cheese cake Pastry"), Text('70/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/cheesecake.png",
                    height: 150,
                    width: 130,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Cheese cake"), Text('550/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/strawberry.png",
                    height: 150,
                    width: 130,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Strawberry cake"), Text('450/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/redvelvet.png",
                    height: 150,
                    width: 130,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Redvelvet cake"), Text('590/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/chocolatepastry.png",
                    height: 150,
                    width: 130,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Chocolate Pastry"), Text('60/-')],
                    ),
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
