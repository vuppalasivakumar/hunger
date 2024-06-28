// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUpView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SignUpView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
