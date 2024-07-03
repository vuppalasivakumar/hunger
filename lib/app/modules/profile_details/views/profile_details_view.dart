// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hunger/app/core/app_config/app_colors.dart';
import 'package:hunger/app/core/app_config/app_sizes.dart';

import '../controllers/profile_details_controller.dart';

class ProfileDetailsView extends GetView<ProfileDetailsController> {
  const ProfileDetailsView({super.key});

  actionButton(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: const Text('Delete Photo'),
                onPressed: () {
                  print('pressed');
                  Get.back();
                },
              ),
              CupertinoActionSheetAction(
                child: const Text('Change Photo'),
                onPressed: () {
                  print('pressed');
                  Get.back();
                },
              )
            ],
            cancelButton: CupertinoActionSheetAction(
              child: const Text('Cancel'),
              onPressed: () {
                Get.back();
              },
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Profile'),
        ),
        body: Column(
          children: [
            Card(
                color: AppColors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: CircleAvatar(
                          radius: AppSizes.x5_62,
                          child: IconButton(
                              onPressed: () {
                                actionButton(context);
                              },
                              icon: const Icon(
                                Icons.person,
                                size: AppSizes.x5_00,
                              ))),
                    ),
                    const SizedBox(
                      height: AppSizes.x1_25,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(AppSizes.x1_50),
                      child: SizedBox(
                        height: AppSizes.x5_25,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter Name",
                              suffixIcon: Icon(Icons.person)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.x1_25,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(AppSizes.x1_50),
                      child: SizedBox(
                        height: AppSizes.x5_25,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter Mobile",
                              suffixIcon: Icon(Icons.phone_enabled)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.x1_25,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(AppSizes.x1_50),
                      child: SizedBox(
                        height: AppSizes.x5_25,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter Email",
                              suffixIcon: Icon(Icons.email)),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(AppSizes.x1_50),
                      child: SizedBox(
                        height: AppSizes.x5_25,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Date of birth",
                              suffixIcon: Icon(Icons.date_range_outlined)),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(AppSizes.x1_50),
                      child: SizedBox(
                        height: AppSizes.x5_25,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Gender",
                              suffixIcon: Icon(Icons.arrow_drop_down_sharp)),
                        ),
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: AppSizes.x6_25,
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text("Update Profile"))
          ],
        ));
  }
}