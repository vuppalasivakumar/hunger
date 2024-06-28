// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hunger/app/modules/product_details/widgets/rating.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 420,
                    height: 300,
                    child: Image.asset(
                      "assets/cake-img.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Obx(
                    () => Positioned(
                        right: 20.0,
                        bottom: 20.0,
                        child: CircleAvatar(
                          child: IconButton(
                              onPressed: () {
                                if (controller.favoriteClicked.value) {
                                  controller.favoriteClicked.value = false;
                                } else {
                                  controller.favoriteClicked.value = true;
                                }
                              },
                              icon: controller.favoriteClicked.value
                                  ? const Icon(
                                      Icons.favorite_rounded,
                                      color: Colors.red,
                                    )
                                  : const Icon(Icons.favorite_border_outlined)),
                        )),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Text(
                      "Black forest",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Rating(
                      color: Colors.amber,
                    ),
                    Rating(
                      color: Colors.amber,
                    ),
                    Rating(
                      color: Colors.amber,
                    ),
                    Rating(
                      color: Colors.amber,
                    ),
                    Rating(),
                    SizedBox(
                      width: 7,
                    ),
                    Text("59 ratings"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          size: 15,
                        ),
                        Text(
                          "400",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.orange),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                if (controller.productAdded.value >= 1) {
                                  controller.productAdded.value =
                                      controller.productAdded.value - 1;
                                }
                              },
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 18,
                              )),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 1),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.orange),
                            child: Obx(
                              () {
                                final addedValue =
                                    controller.productAdded.value;
                                final convertedValue =
                                    addedValue.toString() + " ";
                                return Text(
                                  convertedValue,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16),
                                );
                              },
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                _displayBottomSheet(context);

                                controller.productAdded.value =
                                    controller.productAdded.value + 1;
                              },
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 18,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8),
                title: Text(
                  "Description",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                    maxLines: null,
                    "A sweet baked food made from a dough or thick batter usually containing flour and sugar and often shortening any of a variety of breads, often rich or delicate."),
              ),
              const Divider(
                color: Colors.grey,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Recommended sides",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 2,
                          margin: EdgeInsets.zero,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/blackforest.png",
                                width: 100,
                                height: 100,
                              ),
                              const Text(
                                "Black forest",
                                style: TextStyle(fontSize: 16),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.currency_rupee_sharp,
                                    size: 15,
                                  ),
                                  Text(
                                    "315",
                                    style: textTheme.titleSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  IconButton(
                                      // style: IconButton.styleFrom(
                                      //     side: const BorderSide(
                                      //         color: Colors.amber, width: 2)),
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.amber,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 2,
                          margin: EdgeInsets.zero,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/cake1.jpeg",
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                "Burger",
                                style: TextStyle(fontSize: 16),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.currency_rupee_sharp,
                                    size: 15,
                                  ),
                                  Text(
                                    "190",
                                    style: textTheme.titleSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  IconButton(
                                      // style: IconButton.styleFrom(
                                      //     side: const BorderSide(
                                      //         color: Colors.amber, width: 2)),
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.amber,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 2,
                          margin: EdgeInsets.zero,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/cake2.jpeg",
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                "Dark forest",
                                style: TextStyle(fontSize: 16),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.currency_rupee_sharp,
                                    size: 15,
                                  ),
                                  Text(
                                    "420",
                                    style: textTheme.titleSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  IconButton(
                                      // style: IconButton.styleFrom(
                                      //     side: const BorderSide(
                                      //         color: Colors.amber, width: 2)),
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.amber,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 2,
                          margin: EdgeInsets.zero,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/cake3.jpeg",
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                "vennala",
                                style: TextStyle(fontSize: 16),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.currency_rupee_sharp,
                                    size: 15,
                                  ),
                                  Text(
                                    "215",
                                    style: textTheme.titleSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  IconButton(
                                      // style: IconButton.styleFrom(
                                      //     side: const BorderSide(
                                      //         color: Colors.amber, width: 2)),
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.amber,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 2,
                          margin: EdgeInsets.zero,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/blackforest.png",
                                width: 100,
                                height: 100,
                              ),
                              const Text(
                                "Black forest",
                                style: TextStyle(fontSize: 16),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.currency_rupee_sharp,
                                    size: 15,
                                  ),
                                  Text(
                                    "315",
                                    style: textTheme.titleSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  IconButton(
                                      // style: IconButton.styleFrom(
                                      //     side: const BorderSide(
                                      //         color: Colors.amber, width: 2)),
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_circle_outline,
                                        color: Colors.amber,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total:",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            Text(
                              " Add to cart",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ],
                        ))
                    // o(onPressed: () {}, child: Text("Add to cart"))
                  ],
                ),
              ),
            ));
  }
}
