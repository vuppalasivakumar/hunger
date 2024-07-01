import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunger/app/modules/carts/widgets/order_card.dart';

import '../controllers/carts_controller.dart';

class CartsView extends GetView<CartsController> {
  const CartsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text(
          "Your Order",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.question_mark_rounded,
            size: 28.0,
          ),
          SizedBox(
            width: 30.0,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Obx(
                () => Column(
                  children: [
                    OrderCard(
                      imageUrl: "assets/cake.png",
                      imageText: "cake",
                      productCount:
                          controller.blackForestCount.value.toString(),
                      productCost: controller.blackForestCost.value.toString(),
                      add: () {
                        controller.blackForestCount.value += 1;
                        controller.blackForestCost.value += 220;
                        controller.totalprice.value += 220;
                      },
                      remove: () {
                        if (controller.blackForestCount.value > 0) {
                          controller.blackForestCount.value -= 1;
                          controller.blackForestCost.value -= 220;
                          controller.totalprice.value -= 220;
                        }
                      },
                    ),
                    OrderCard(
                      imageUrl: "assets/biry.png",
                      imageText: "Biryani",
                      productCount: controller.biryaniCount.value.toString(),
                      productCost: controller.biryaniCost.value.toString(),
                      add: () {
                        controller.biryaniCount.value += 1;
                        controller.biryaniCost.value += 180;
                        controller.totalprice.value += 180;
                      },
                      remove: () {
                        if (controller.biryaniCount.value > 0) {
                          controller.biryaniCount.value -= 1;
                          controller.biryaniCost.value -= 180;
                          controller.totalprice.value -= 180;
                        }
                      },
                    ),
                    OrderCard(
                      imageUrl: "assets/paneer.jpg",
                      imageText: "Paneer",
                      productCount: controller.paneerCount.value.toString(),
                      productCost: controller.paneerCost.value.toString(),
                      add: () {
                        controller.paneerCount.value += 1;
                        controller.paneerCost.value += 120;
                        controller.totalprice.value += 120;
                      },
                      remove: () {
                        if (controller.paneerCount.value > 0) {
                          controller.paneerCount.value -= 1;
                          controller.paneerCost.value -= 120;
                          controller.totalprice.value -= 120;
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => Card(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListTile(
                    leading: Text(
                      "Total price",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.currency_rupee,
                          size: 20.0,
                        ),
                        Text(
                          controller.totalprice.value.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  //   child: FilledButton(
                  //     onPressed: () {},
                  //     child: const Text("Add items"),
                  //   ),
                  // ),
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
