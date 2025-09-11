import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrderController extends GetxController {
  final PageController pageController = PageController();
  int currentIndex = 0;

  void onPageChanged(int index) {
    if (currentIndex != index) {
      currentIndex = index;
      update();
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
