// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cakes_controller.dart';

class CakesView extends GetView<CakesController> {
  @override
  Widget build(BuildContext context) {
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
                      hintText: 'Biryani',
                      border:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ))),
        ],
      ),

      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 2.0,
            physics: AlwaysScrollableScrollPhysics(),
            children:  controller.cakes.asMap().entries.map((entry) {
              final product = entry.value;
              return Card(
                child: ListTile(
                  title: SizedBox(height:140,
                      child: Image.network(product['image'] ?? "",fit: BoxFit.fill,)),
                  subtitle: Column(
                    children: [
                      Text(
                        product['title'] ?? "N/A",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
                      ),
                      Text(
                          product['sub-title'] ?? "N/A",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0)
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      )
    );
  }
}
