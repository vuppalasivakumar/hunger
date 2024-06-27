// ignore_for_file: unnecessary_import, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

// ignore: unused_import
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/combinational_products_controller.dart';

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
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.mic)),
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ))),
        ],
      ),
      // const Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Text(
      //       'Dishes',
      //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
      //     ),
      //   ],
      // ),
      // SizedBox(
      //   height: 20.0,
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani_2.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //         Text('350'),
      //       ],
      //     )),
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani_1.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //         Text('310'),
      //       ],
      //     )),
      //   ],
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani-4.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //         Text('290'),
      //       ],
      //     )),
      //     Card(
      //         child: Column(
      //       children: [
      // Image.asset(
      //   "assets/biryani-3.jpg",
      //   height: 100,
      //   width: 180,
      // ),
      // Text('Biryani'),
      // Text('350'),
      //       ],
      //     )),
      //   ],
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani-6.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //         Text('360'),
      //       ],
      //     )),
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani-5.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //         Text('360'),
      //       ],
      //     )),
      //   ],
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani-3.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //         Text('350'),
      //       ],
      //     )),
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani_2.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //         Text('310'),
      //       ],
      //     )),
      //   ],
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani_1.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //         Text('400'),
      //       ],
      //     )),
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani-5.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //         Text('350'),
      //       ],
      //     )),
      //   ],
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani-5.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //         Text('410'),
      //       ],
      //     )),
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani-5.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //         Text('350'),
      //       ],
      //     )),
      //   ],
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani-3.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //       ],
      //     )),
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani-6.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //       ],
      //     )),
      //   ],
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani-4.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //       ],
      //     )),
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani_2.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //       ],
      //     )),
      //   ],
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani-4.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //       ],
      //     )),
      //     Card(
      //         child: Column(
      //       children: [
      //         Image.asset(
      //           "assets/biryani-6.jpg",
      //           height: 100,
      //           width: 180,
      //         ),
      //         Text('Biryani'),
      //       ],
      //     )),
      //   ],
      // ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'biryani',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: [
                    Card(
                        child: ListTile(
                      title: Image.asset(
                        "assets/biryani_1.jpg",
                        height: 150,
                        width: 130,
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: [Text("Raju gari Biryani"), Text('350/-')],
                        ),
                      ),
                    )),
                    Card(
                        child: ListTile(
                      title: Image.asset(
                        "assets/biryani_2.jpg",
                        height: 150,
                        width: 100,
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: [Text("peacock resturent"), Text('240/-')],
                        ),
                      ),
                    )),
                    Card(
                        child: ListTile(
                      title: Image.asset(
                        "assets/biryani-3.jpg",
                        height: 150,
                        width: 100,
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: [Text("swetha Biryani"), Text('220/-')],
                        ),
                      ),
                    )),
                    Card(
                        child: ListTile(
                      title: Image.asset(
                        "assets/biryani-4.jpg",
                        height: 150,
                        width: 100,
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: [Text("Biryani"), Text('320/-')],
                        ),
                      ),
                    )),
                    Card(
                        child: ListTile(
                      title: Image.asset(
                        "assets/biryani-5.jpg",
                        height: 150,
                        width: 100,
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: [Text("Mayuri Resturent"), Text('220/-')],
                        ),
                      ),
                    )),
                    Card(
                        child: ListTile(
                      title: Image.asset(
                        "assets/biyani-6.jpg",
                        height: 150,
                        width: 130,
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: [Text("MAyuri hotel"), Text('70/-')],
                        ),
                      ),
                    )),
                    Card(
                        child: ListTile(
                      title: Image.asset(
                        "assets/biyani_2.jpg",
                        height: 150,
                        width: 130,
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: [Text("hotel"), Text('550/-')],
                        ),
                      ),
                    )),
                    Card(
                        child: ListTile(
                      title: Image.asset(
                        "assets/strawberry.png",
                        height: 150,
                        width: 130,
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: [Text("S"), Text('450/-')],
                        ),
                      ),
                    )),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
