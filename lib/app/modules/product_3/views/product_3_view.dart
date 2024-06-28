// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_3_controller.dart';

class Product3View extends GetView<Product3Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product3View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Product3View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
