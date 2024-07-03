import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hunger/app/core/app_config/app_colors.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';
import 'package:hunger/app/modules/product_details/widgets/rating.dart';
import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: AppBar(
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
                    width: AppSizes.x42_00,
                    height: AppSizes.x37_00,
                    child: Image.asset(
                      "assets/cake-img.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Obx(
                    () => Positioned(
                        right: AppSizes.x2_5,
                        bottom: AppSizes.x2_5,
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
                                      color: AppColors.rustedOrange,
                                    )
                                  : const Icon(Icons.favorite_border_outlined)),
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: AppSizes.x1_00),
                child: Row(
                  children: [
                    Text("Black forest",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontSize: AppSizes.x2_5,
                                fontWeight: FontWeight.bold)),
                    const SizedBox(
                      width: AppSizes.x1_00,
                    ),
                    const Rating(
                      color: AppColors.ratingColor,
                    ),
                    const Rating(
                      color: AppColors.ratingColor,
                    ),
                    const Rating(
                      color: AppColors.ratingColor,
                    ),
                    const Rating(
                      color: AppColors.ratingColor,
                    ),
                    const Rating(),
                    const SizedBox(
                      width: AppSizes.x1_00,
                    ),
                    const Text("59 ratings"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.x1_50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.currency_rupee,
                          size: AppSizes.x1_87,
                        ),
                        Text(
                          "400",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: AppSizes.x2_37),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.rustedOrange),
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
                                color: AppColors.white,
                                size: AppSizes.x2_37,
                              )),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 1),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.rustedOrange),
                            child: Obx(
                              () {
                                final addedValue =
                                    controller.productAdded.value;
                                final convertedValue =
                                    // ignore: prefer_interpolation_to_compose_strings
                                    addedValue.toString() + " ";
                                return Text(convertedValue,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                          color: AppColors.white,
                                          fontSize: AppSizes.x2_37,
                                        ));
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
                                color: AppColors.white,
                                size: AppSizes.x2_37,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: AppSizes.x1_00),
                title: Text(
                  "Description",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: AppSizes.x2_5, fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                    maxLines: null,
                    "A sweet baked food made from a dough or thick batter usually containing flour and sugar and often shortening any of a variety of breads, often rich or delicate."),
              ),
              const Divider(
                color: AppColors.grey,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.x1_50),
                child: Text(
                  "Recommended sides",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: AppSizes.x2_5, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.x1_87),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: AppSizes.x1_87),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 2,
                          margin: EdgeInsets.zero,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/blackforest.png",
                                width: AppSizes.x12_5,
                                height: AppSizes.x12_5,
                              ),
                              Text(
                                "Black forest",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(fontSize: AppSizes.x2_00),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.currency_rupee_sharp,
                                    size: AppSizes.x1_87,
                                  ),
                                  Text(
                                    "315",
                                    style: textTheme.titleSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: AppSizes.x1_87,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add_circle_outline,
                                          color: AppColors.ratingColor))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: AppSizes.x1_87),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 2,
                          margin: EdgeInsets.zero,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/cake1.jpeg",
                                width: AppSizes.x12_5,
                                height: AppSizes.x12_5,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Burger",
                                style: textTheme.titleSmall!
                                    .copyWith(fontSize: AppSizes.x2_00),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.currency_rupee_sharp,
                                    size: AppSizes.x1_87,
                                  ),
                                  Text(
                                    "190",
                                    style: textTheme.titleSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: AppSizes.x1_50,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_circle_outline,
                                        color: AppColors.ratingColor,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: AppSizes.x1_87),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 2,
                          margin: EdgeInsets.zero,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/cake2.jpeg",
                                width: AppSizes.x12_5,
                                height: AppSizes.x12_5,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Dark forest",
                                style: textTheme.titleSmall!
                                    .copyWith(fontSize: AppSizes.x2_00),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.currency_rupee_sharp,
                                    size: AppSizes.x1_87,
                                  ),
                                  Text(
                                    "420",
                                    style: textTheme.titleSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: AppSizes.x1_50,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_circle_outline,
                                        color: AppColors.ratingColor,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: AppSizes.x1_87),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 2,
                          margin: EdgeInsets.zero,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/cake3.jpeg",
                                width: AppSizes.x12_5,
                                height: AppSizes.x12_5,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "vennala",
                                style: textTheme.titleSmall!
                                    .copyWith(fontSize: AppSizes.x2_00),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.currency_rupee_sharp,
                                    size: AppSizes.x1_87,
                                  ),
                                  Text(
                                    "215",
                                    style: textTheme.titleSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: AppSizes.x1_50,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_circle_outline,
                                        color: AppColors.ratingColor,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: AppSizes.x1_87),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 2,
                          margin: EdgeInsets.zero,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/blackforest.png",
                                width: AppSizes.x12_5,
                                height: AppSizes.x12_5,
                              ),
                              Text(
                                "Black forest",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(fontSize: AppSizes.x2_00),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.currency_rupee_sharp,
                                    size: AppSizes.x1_87,
                                  ),
                                  Text(
                                    "315",
                                    style: textTheme.titleSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: AppSizes.x1_50,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.add_circle_outline,
                                        color: AppColors.ratingColor,
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
              height: AppSizes.x12_5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.x1_50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total:",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontSize: AppSizes.x2_87,
                            fontWeight: FontWeight.bold)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.rustedOrange),
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              color: AppColors.white,
                            ),
                            Text(
                              " Add to cart",
                              style: TextStyle(
                                  fontSize: AppSizes.x1_87,
                                  color: AppColors.white),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ));
  }
}
