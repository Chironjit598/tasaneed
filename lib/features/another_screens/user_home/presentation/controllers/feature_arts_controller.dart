import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeatureArtsController extends GetxController {
  // Sort options: 0 = Newest Arrivals, 1 = Popularity, 2 = Price
  int selectedSort = 0;

  // Categories for demo
  final List<String> categories = const [
    'Choose Category',
    'Painting',
    'Sculpture',
    'Photography',
    'Digital Art',
  ];
  int selectedCategoryIndex = 0; // default: Choose Category

  // Price range (demo values)
  double minPrice = 0;
  double maxPrice = 5000;
  RangeValues priceRange = const RangeValues(1000, 4000);

  // Status: 'Unique' or 'Resale'
  String status = 'Unique';

  void setSort(int index) {
    selectedSort = index;
    update();
  }

  void setPrice(RangeValues values) {
    priceRange = values;
    update();
  }

  void setCategoryIndex(int index) {
    selectedCategoryIndex = index;
    update();
  }

  void setStatus(String value) {
    status = value;
    update();
  }

  void resetFilters() {
    selectedCategoryIndex = 0;
    priceRange = const RangeValues(1000, 4000);
    status = 'Unique';
    update();
  }
}
