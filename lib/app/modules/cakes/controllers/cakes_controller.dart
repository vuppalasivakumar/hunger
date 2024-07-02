// ignore_for_file: unnecessary_overrides, duplicate_ignore

import 'package:get/get.dart';

class CakesController extends GetxController {
  var cakes=[
    {
      "title":'blue forest',
      "image":'https://images.squarespace-cdn.com/content/v1/59dc05562994ca84b399943a/1509997455637-8WX41YQOPH1CDTTM9ERZ/F7472C17-08F7-4B75-BACC-7C31926E25A5.jpg',
      "sub-title":'450/-'
    },
    {
      "title":'butter cake',
      "image":'https://images.unsplash.com/photo-1578985545062-69928b1d9587?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y2FrZXN8ZW58MHx8MHx8fDA=',
      "sub-title":'450/-'
    },
    {
      "title":'pound cake',
      "image":'https://images.unsplash.com/photo-1602351447937-745cb720612f?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGNha2VzfGVufDB8fDB8fHww',
      "sub-title":'450/-'
    },
    {
      "title":'vennela cake',
      "image":'https://images.squarespace-cdn.com/content/v1/59dc05562994ca84b399943a/1509997455637-8WX41YQOPH1CDTTM9ERZ/F7472C17-08F7-4B75-BACC-7C31926E25A5.jpg',
      "sub-title":'450/-'
    },
    {
      "title":'black forest',
      "image":'https://media.gettyimages.com/id/182175040/photo/birthday-cake.jpg?s=612x612&w=0&k=20&c=6_xWDlsZCO-L8NrlaMVto-1oTAaqgmr2N9biOMbl_HM=',
      "sub-title":'450/-'
    },
    {
      "title":'red forest',
      "image":'https://images.squarespace-cdn.com/content/v1/59dc05562994ca84b399943a/1509997455637-8WX41YQOPH1CDTTM9ERZ/F7472C17-08F7-4B75-BACC-7C31926E25A5.jpg',
      "sub-title":'450/-'
    },
    {
      "title":'carrot cake',
      "image":'https://images.squarespace-cdn.com/content/v1/59dc05562994ca84b399943a/1508458387208-NCJHZZ9XJEMW8FKX4XIP/IMG_0093.jpg',
      "sub-title":'450/-'
    },
    {
      "title":'sponge cake',
      "image":'https://dulceology.com/cdn/shop/products/image_09c3f5d5-75ec-4a10-bc3d-d95a3b34fc93_1000x1000.jpg?v=1615073258',
      "sub-title":'450/-'
    },
    {
      "title":'angel cake',
      "image":'https://i.pinimg.com/originals/ad/cf/9d/adcf9da037229ad3528a566b23ebdfbe.jpg',
      "sub-title":'450/-'
    },
    {
      "title":'pineapple cake',
      "image":'https://preview.redd.it/first-attempt-to-make-a-birthday-cake-for-hubby-he-loves-v0-9vfpq8z2ov6d1.jpeg?width=640&crop=smart&auto=webp&s=957f082bac16b9a42c5d4d57f625dccf99bf3d39',
      "sub-title":'450/-'
    },
  ];

  final count = 0.obs;
  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
