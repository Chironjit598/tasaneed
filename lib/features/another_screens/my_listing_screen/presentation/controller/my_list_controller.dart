import 'package:get/get.dart';
import 'package:tasaned_project/features/another_screens/drawer_screens/presentation/screens/resale_art_screen.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';

class MyListController extends GetxController {
  // Master data (immutable for filtering)
  final List<Map<String, dynamic>> _allItems = [
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

  // Visible items (filtered)
  final List<Map<String, dynamic>> items = [];

  // Current selected filter
  String selectedFilter = AppString.available; // default to Available

  @override
  void onInit() {
    super.onInit();
    applyFilter(selectedFilter);
  }

  void onEdit(int index) {
    final item = items[index];
    Get.to(() => ResaleArtScreen(order: item));
  }

  void deleteItem(int index) {
    // Remove from visible list and master list by a simple match
    final toRemove = items[index];
    items.removeAt(index);
    final masterIndex = _allItems.indexWhere((e) => e['title'] == toRemove['title'] && e['status'] == toRemove['status']);
    if (masterIndex != -1) _allItems.removeAt(masterIndex);
    update();
  }

  void applyFilter(String filter) {
    selectedFilter = filter;
    items
      ..clear()
      ..addAll(_allItems.where((e) => e['status'] == filter));
    update();
  }
}
