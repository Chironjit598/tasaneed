import 'package:get/get.dart';
import 'package:tasaned_project/features/another_screens/drawer_screens/presentation/screens/resale_art_screen.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';

class MyCollectionsController extends GetxController {
  // Static demo data
  final List<Map<String, dynamic>> items = [
    {
      'title': 'Whispers of the Forest',
      'price': 250,
      'status': AppString.sold,
      'image': AppImages.arts,
    },
    {
      'title': 'Whispers of the Forest',
      'price': 250,
      'status': AppString.available,
      'image': AppImages.arts,
    },
    {
      'title': 'Whispers of the Forest',
      'price': 250,
      'status': AppString.available,
      'image': AppImages.arts,
    },
  ];

  void onEdit(int index) {
    final item = items[index];
    Get.to(() => ResaleArtScreen(order: item));
  }

  void deleteItem(int index) {
    items.removeAt(index);
    update();
  }
}
