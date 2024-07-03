// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
          centerTitle: true,
        ),

        //1st  carasoul

        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  child: Column(
                children: [
                  CarouselSlider(
                      items: [
                        //kfc image1
                        GestureDetector(
                          child: Container(
                              child: Image.asset('assets/kfccombo.png')),
                          onTap: () {
                            //  Get.toNamed(Routes.''),
                          },
                        ),

                        //kfc image2
                        GestureDetector(
                          child: Container(
                              child: Image.asset('assets/kgccombo2.png')),
                          onTap: () {
                            //  Get.toNamed(Routes.''),
                          },
                        ),

                        //kfc image3
                        GestureDetector(
                          child: Container(
                            child: Image.asset('assets/kfc.png'),
                          ),
                          onTap: () {
                            //  Get.toNamed(Routes.''),
                          },
                        ),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        enableInfiniteScroll: true,
                        // pauseAutoPlayInFiniteScroll: false,
                        autoPlayAnimationDuration: Duration(milliseconds: 150),
                        viewportFraction: 1.5,
                      )),
                  ListTile(
                    title: Text(
                      'KFC',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              '4.2',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                              size: 15.0,
                            ),
                          ],
                        )),
                    subtitle: Row(
                      children: const [
                        Text('KFC .'),
                        Icon(
                          Icons.currency_rupee,
                          size: 15.0,
                        ),
                        Text('300 for one'),
                      ],
                    ),
                  ),
                ],
              )),

              //2nd carousel
              Card(
                  child: Column(
                children: [
                  CarouselSlider(
                      items: [
                        //bawarachi image1

                        GestureDetector(
                            onTap: () {
                              //  Get.toNamed(Routes.''),
                            },
                            child: Container(
                                child: Image.asset('assets/biryani1.jpg'))),

                        //bawarachi image2

                        GestureDetector(
                          onTap: () {
                            //  Get.toNamed(Routes.''),
                          },
                          child: Container(
                              child: Image.asset('assets/biryani4.jpg')),
                        ),

                        //bawarachi image3
                        GestureDetector(
                          onTap: () {
                            //  Get.toNamed(Routes.''),
                          },
                          child: Container(
                              child: Image.asset('assets/biryani7.png',
                                  fit: BoxFit.fill)),
                        )
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 150),
                        viewportFraction: 1.8,
                      )),
                  ListTile(
                    title: Text(
                      'BHAWARCHI',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              '4.0',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                              size: 15.0,
                            ),
                          ],
                        )),
                    subtitle: Row(
                      children: const [
                        Text('Biryani . Non Veg .'),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              size: 15.0,
                            ),
                          ],
                        ),
                        Text('240 for one'),
                      ],
                    ),
                  ),
                ],
              )),

              //   3rd carousel

              Card(
                  child: Column(
                children: [
                  CarouselSlider(
                      items: [
                        //platform image1
                        GestureDetector(
                          onTap: () {
                            //  Get.toNamed(Routes.''),
                          },
                          child:
                              Container(child: Image.asset('assets/veg1.png')),
                        ),
                        //platform img2
                        GestureDetector(
                          onTap: () {
                            //  Get.toNamed(Routes.''),
                          },
                          child:
                              Container(child: Image.asset('assets/veg2.png')),
                        ),
                        //platform img3
                        GestureDetector(
                          onTap: () {
                            //  Get.toNamed(Routes.''),
                          },
                          child: Container(
                            child: Image.asset('assets/veg3.jpg'),
                          ),
                        )
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 150),
                        viewportFraction: 1.5,
                      )),
                  ListTile(
                    title: Text(
                      'PLATFORM 65',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              '4.1',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                              size: 15.0,
                            ),
                          ],
                        )),
                    subtitle: Row(
                      children: const [
                        Text('Birayani . Pure veg .'),
                        Icon(
                          Icons.currency_rupee,
                          size: 15.0,
                        ),
                        Text('120 for one'),
                      ],
                    ),
                  ),
                ],
              )),

              //4th courasel

              Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      CarouselSlider(
                          items: [
                            //tiffin img1
                            GestureDetector(
                              onTap: () {
                                //  Get.toNamed(Routes.''),
                              },
                              child: Container(
                                  child: Image.asset('assets/puri.png')),
                            ),
                            //tiffin img2
                            GestureDetector(
                              onTap: () {
                                //  Get.toNamed(Routes.''),
                              },
                              child: Container(
                                  child: Image.asset('assets/dosa.jpg')),
                            ),
                            //tiffin img3
                            GestureDetector(
                              onTap: () {
                                //  Get.toNamed(Routes.''),
                              },
                              child: Container(
                                child: Image.asset('assets/idli1.JPG'),
                              ),
                            )
                          ],
                          options: CarouselOptions(
                            autoPlay: true,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 150),
                            viewportFraction: 1.5,
                          )),
                      ListTile(
                        title: Text(
                          'TIFFINS KITCHEN ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: Container(
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  '3.9',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.white,
                                  size: 15.0,
                                ),
                              ],
                            )),
                        subtitle: Row(
                          children: const [
                            Text('Tiffins'),
                            Icon(
                              Icons.currency_rupee,
                              size: 15.0,
                            ),
                            Text('60 for plate'),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
