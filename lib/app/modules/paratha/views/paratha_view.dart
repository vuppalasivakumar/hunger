import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';

import '../controllers/paratha_controller.dart';

class ParathaView extends GetView<ParathaController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          actions: [
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38.0),
                    child: TextField(
                      onTap: () {},
                      decoration: InputDecoration(
                        hintText: 'Paratha',
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                      ),
                    ))),
          ],
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 2.0,
              physics: AlwaysScrollableScrollPhysics(),
              children:  controller.productItems.asMap().entries.map((entry) {
                final product = entry.value;
                return Card(
                  child: ListTile(
                    title: SizedBox(height: AppSizes.x1_90,
                    child: InkWell(child: Image.network(product['image'] ?? "",fit: BoxFit.fill),onTap: () {
                      
                    },)),
                    subtitle: InkWell(
                      child: Column(
                        children: [
                          Text(
                            product['title'] ?? "N/A",
                            style: textTheme.titleMedium!.copyWith(),
                          ),
                          Text(
                            product['price'] ?? "N/A",
                            style: textTheme.bodyMedium!.copyWith(),
                          ),
                        ],
                      ),
                      onTap: (){},
                    ),
                    // You can use 'index' here if needed
                  ),
                );
              }).toList(),
            ),
          ),
        ));
  }
}
