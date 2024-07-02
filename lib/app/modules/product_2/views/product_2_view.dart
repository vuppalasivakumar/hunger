 

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_assets.dart';
import 'package:hunger/app/core/app_config/app_colors.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';
import 'package:hunger/app/routes/app_pages.dart';

import '../controllers/product_2_controller.dart';

class Product2View extends GetView<Product2Controller> {
  const Product2View({super.key});

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
              padding: const EdgeInsets.only(top: Appsizes.x1_50),
              child: Container(color: Appcolor.white,
                child:  Column(
                  children: [
                    Text(
                      'Burger',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold)
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
                    Appassets.cheeseburger,
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
                    Appassets.chickenburger,
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
                    Appassets.cornburger,
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
                    Appassets.eggburger,
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
                    Appassets.paneerburger,
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
                    Appassets.vegburger,
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
                    Appassets.burger,
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
                    Appassets.burgercombo,
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
