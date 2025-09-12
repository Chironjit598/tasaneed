import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrderController extends GetxController {
  final PageController pageController = PageController();
  int currentIndex = 0;
  String currentStatus = 'Pending';
  final List<String> statuses = const ['Pending', 'Shipped', 'Delivered', 'Canceled'];

  void onPageChanged(int index) {
    if (currentIndex != index) {
      currentIndex = index;
      update();
    }
  }

  void setInitialStatus(String status) {
    if (status.isNotEmpty) currentStatus = status;
    update();
  }

  void updateStatus(String status) {
    currentStatus = status;
    update();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
