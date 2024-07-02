import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_assets.dart';
import 'package:hunger/app/core/app_config/app_colors.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';
import 'package:hunger/app/routes/app_pages.dart';

import '../controllers/product_1_controller.dart';

class Product1View extends GetView<Product1Controller> {
  const Product1View({super.key});

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
              padding: const EdgeInsets.only(top: Appsizes.x2_50),
              child: Container(color: Appcolor.white,
                child:  Column(
                  children: [
                    Text(
                      'Cakes',
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
                    Appassets.blackforest,
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
                    Appassets.chocolatecake,
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
                    Appassets.pineapple,
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
                    Appassets.chococake,
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
                    Appassets.mango,
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
                    Appassets.cheesecakepastry,
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
                    Appassets.cheesecake,
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
                   Appassets.strawberry,
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
                    Appassets.redvelvet,
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
                    Appassets.chocolatepastry,
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
