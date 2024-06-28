// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';
import 'package:hunger/app/routes/app_pages.dart';

import '../controllers/product_2_controller.dart';

class Product2View extends GetView<Product2Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.toNamed(Routes.HOME);
            },
            icon: const Icon(Icons.arrow_back)),
        title:const CupertinoSearchTextField(),
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
                      'Burger',
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
                    "assets/cheese_burger.png",
                    height: 150,
                    width: 130,
                  ),
                  onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Cheese Burger"), Text('250/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/chicken_burger.png",
                    height: 150,
                    width: 100,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Chicken Burger"), Text('260/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/corn_burger.png",
                    height: 150,
                    width: 100,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Corn Burger"), Text('140/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/egg_burger.png",
                    height: 150,
                    width: 100,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Egg Burger"), Text('120/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/paneer_burger.png",
                    height: 150,
                    width: 100,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Paneer Burger"), Text('220/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/veg_burger.png",
                    height: 150,
                    width: 130,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Veg Burger"), Text('150/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/burger.png",
                    height: 150,
                    width: 130,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Burger"), Text('150/-')],
                    ),
                  ),
                )),
                Card(
                    child: ListTile(
                  title: Image.asset(
                    "assets/burgercombo.png",
                    height: 150,
                    width: 130,
                  ),onTap: (){},
                  subtitle: const Padding(
                    padding: EdgeInsets.all(Appsizes.x0_50),
                    child: Column(
                      children: [Text("Burger Combo"), Text('450/-')],
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
