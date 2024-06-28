// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cakes_controller.dart';

class CakesView extends GetView<CakesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cakes'),
        centerTitle: true,
        elevation: 0.6,
      ),

      // ignore: prefer_const_constructors
      body: Column(
        children:  [
          GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 20.0), itemBuilder: (BuildContext, int index) {
            return ListTile(
              title: Text(''),
              subtitle: Text(''),
            );
          },)
        ],
      ),
    );
  }
}
