// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_details_controller.dart';

class ProfileDetailsView extends GetView<ProfileDetailsController> {
  const ProfileDetailsView({super.key});


  actionButton(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
            // title: Text('Select Option'),
            // message: Text('Which option?'),
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
              color: Colors.white,
                child: Column(
              children: [
                ListTile(
                  title: CircleAvatar(
                      radius: 45.0,
                      child: IconButton(
                          onPressed: () {
                            actionButton(context);
                          },
                          icon: const Icon(
                            Icons.person,
                            size: 40,
                          ))),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Padding(
                  padding:  EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 42.0,
                    child:  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Enter Name",
                          suffixIcon: Icon(Icons.person)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Padding(
                  padding:  EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 42.0,
                    child:  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Enter Mobile",
                          suffixIcon: Icon(Icons.phone_enabled)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Padding(
                  padding:  EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 42.0,
                    child:  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Enter Email",
                          suffixIcon: Icon(Icons.email)),
                    ),
                  ),
                ),
               const Padding(
                  padding:  EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 42.0,
                    child:  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Date of birth",
                          suffixIcon: Icon(Icons.date_range_outlined)),
                    ),
                  ),
                ),
               const Padding(
                  padding:  EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 42.0,
                    child:  TextField(
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
              height: 50.0,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Update Profile"))
          ],
        ));
  }
}
