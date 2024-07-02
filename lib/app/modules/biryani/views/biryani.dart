// ignore_for_file: unnecessary_import, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

// ignore: unused_import
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/biryani.dart';

class CombinationalProductsView
    extends GetView<CombinationalProductsController> {
  const CombinationalProductsView({super.key});

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
      body:SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 2.0,
              physics: AlwaysScrollableScrollPhysics(),
              children:  controller.biryani.asMap().entries.map((entry) {
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
        )    );
  }
}
