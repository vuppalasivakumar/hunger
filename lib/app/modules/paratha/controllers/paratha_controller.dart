import 'package:get/get.dart';

class ParathaController extends GetxController {
  final List<Map<String, String>> productItems = [
    {
      'price':'350/-',
      'title': 'paratha',
      'image':
          'https://media.gettyimages.com/id/1221466757/photo/aloo-paratha.jpg?s=612x612&w=0&k=20&c=sxKt7mS1HRFZpltdi0wUmpdVMUXYQLSfys9OcrkNJh4=',
    },
    {
      'price':'310/-',
      'title': 'alu paratha',
      'image':
          'https://media.gettyimages.com/id/1307253311/photo/methi-paratha.jpg?s=612x612&w=0&k=20&c=iloVADzTTfx0Y3Fg5j03lNJN3UGXtl3l4q_lGAxtif8=',
    },
    {
      'price':'380/-',
      'title': 'mint paratha',
      'image':
          'https://media.istockphoto.com/id/1167481258/photo/image-of-north-indian-breakfast-dish-buffet-slices-of-aloo-parathas-with-sprinkle-of.jpg?s=612x612&w=0&k=20&c=k-_BnZu0j3lcKxIX4pKG0SmgAxPKLJPpQYEpMm0v2pI='
    },
    {
      'price':'300/-',
      'title': 'gobhi paratha',
      'image':
          'https://media.istockphoto.com/id/1279134630/photo/image-of-metal-tray-with-with-aloo-paratha-pile-topped-with-chillies-red-onion-rings-and.jpg?s=612x612&w=0&k=20&c=dJ5N0NjjrmtYCCtOc2d75onPotelDY-_rEGk4dcDDLc='
    },
    {
      'price':'400/-',
      'title': 'kheema paratha',
      'image':
          'https://media.istockphoto.com/id/1224537560/photo/image-of-indian-breakfast-dish-buffet-slices-of-aloo-parathas-with-sprinkle-of-caramelised.jpg?s=612x612&w=0&k=20&c=WHD5F8CekVoRbDp9pSSOpN9Mt0cF4r1gCNMZSee3n5Y='
    },
    {
      'price':'410/-',
      'title': 'veg paratha',
      'image':
          'https://media.istockphoto.com/id/1279134622/photo/image-of-metal-tray-with-aloo-paratha-pile-topped-with-red-onion-rings-and-sprinkle-of.jpg?s=612x612&w=0&k=20&c=qLee_GMpPHzcCVfkNWmMdJPjlIpxsklN_bMwlhQS7rM='
    },
    {
      'price':'300/-',
      'title': 'gobhi paratha',
      'image':
      'https://media.istockphoto.com/id/1279134630/photo/image-of-metal-tray-with-with-aloo-paratha-pile-topped-with-chillies-red-onion-rings-and.jpg?s=612x612&w=0&k=20&c=dJ5N0NjjrmtYCCtOc2d75onPotelDY-_rEGk4dcDDLc='
    },
    {
      'price':'310/-',
      'title': 'alu paratha',
      'image':
      'https://media.gettyimages.com/id/1307253311/photo/methi-paratha.jpg?s=612x612&w=0&k=20&c=iloVADzTTfx0Y3Fg5j03lNJN3UGXtl3l4q_lGAxtif8=',
    },
    {
      'price':'300/-',
      'title': 'gobhi paratha',
      'image':
      'https://media.istockphoto.com/id/1279134630/photo/image-of-metal-tray-with-with-aloo-paratha-pile-topped-with-chillies-red-onion-rings-and.jpg?s=612x612&w=0&k=20&c=dJ5N0NjjrmtYCCtOc2d75onPotelDY-_rEGk4dcDDLc='
    },
    {
      'price':'400/-',
      'title': 'kheema paratha',
      'image':
          'https://media.istockphoto.com/id/1224537560/photo/image-of-indian-breakfast-dish-buffet-slices-of-aloo-parathas-with-sprinkle-of-caramelised.jpg?s=612x612&w=0&k=20&c=WHD5F8CekVoRbDp9pSSOpN9Mt0cF4r1gCNMZSee3n5Y='
    },
    
  ].obs;

  final count = 0.obs;
  @override
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
