import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderHistoryController extends GetxController {
  // 0 = My Purchase, 1 = My Sales
  int selectedTab = 0;

  final TextEditingController searchController = TextEditingController();

  final List<Map<String, dynamic>> purchases = [
    {"title": "Whispers of the Forest", "price": 250, "status": "Received"},
    {"title": "Whispers of the Forest", "price": 250, "status": "Pending"},
    {"title": "Whispers of the Forest", "price": 250, "status": "Processing"},
    {"title": "Whispers of the Forest", "price": 250, "status": "Confirmed"},
    {"title": "Whispers of the Forest", "price": 250, "status": "Canceled"},
    {"title": "Whispers of the Forest", "price": 250, "status": "Rejected"},
    {"title": "Whispers of the Forest", "price": 250, "status": "Expired"},
  ];

  final List<Map<String, dynamic>> sales = [
    {"title": "Whispers of the Forest", "price": 250, "status": "New Offer"},
    {"title": "Whispers of the Forest", "price": 250, "status": "Processing"},
    {"title": "Whispers of the Forest", "price": 250, "status": "Confirmed"},
    {"title": "Whispers of the Forest", "price": 250, "status": "Canceled"},
    {"title": "Whispers of the Forest", "price": 250, "status": "Rejected"},
    {"title": "Whispers of the Forest", "price": 250, "status": "Expired"},
  ];

  void changeTab(int index) {
    if (selectedTab != index) {
      selectedTab = index;
      update();
    }
  }

  List<Map<String, dynamic>> get currentList => selectedTab == 0 ? purchases : sales;

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}
