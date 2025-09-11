import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderHistoryController extends GetxController {
  // 0 = My Purchase, 1 = My Sales
  int selectedTab = 0;

  final TextEditingController searchController = TextEditingController();

  // Filter state
  String? selectedStatusFilter; // null means no filter
  final List<String> statuses = const [
    'Pending',
    'Processing',
    'Confirmed',
    'Received',
    'Expired',
    'Rejected',
    'Canceled',
    'New Offer',
  ];

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
      // Reset filter on tab switch
      selectedStatusFilter = null;
      update();
    }
  }

  List<Map<String, dynamic>> get currentList => selectedTab == 0 ? purchases : sales;

  // Returns the list respecting the selectedStatusFilter
  List<Map<String, dynamic>> get filteredList {
    final list = currentList;
    if (selectedStatusFilter == null) return list;
    return list.where((e) => (e['status'] as String).toLowerCase() == selectedStatusFilter!.toLowerCase()).toList();
  }

  void setFilter(String? status) {
    selectedStatusFilter = status;
    update();
  }

  void clearFilter() {
    selectedStatusFilter = null;
    update();
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}
