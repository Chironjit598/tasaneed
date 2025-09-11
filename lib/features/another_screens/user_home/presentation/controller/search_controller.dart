import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';

class SearchControllerX extends GetxController {
  final TextEditingController queryController = TextEditingController(text: 'Ab');

  final List<String> labels = const ['All', 'Artwork', 'Artist', 'Gallery / Museum'];
  int selectedFilter = 0; // 0: All, 1: Artwork, 2: Artist, 3: Gallery / Museum

  final List<Map<String, String>> results = [
    {"name": "Ab", "role": "Artist", "image": AppImages.female},
    {"name": "Ab anbar", "role": "Gallery / Museum", "image": AppImages.female},
    {"name": "Ab Oil", "role": "Artwork", "image": AppImages.female},
    {"name": "Ab Hanegem", "role": "Collector", "image": AppImages.female},
  ];

  void setFilter(int index) {
    selectedFilter = index;
    update();
  }

  void setQuery(String q) {
    queryController.text = q;
    update();
  }

  @override
  void onClose() {
    queryController.dispose();
    super.onClose();
  }
}
