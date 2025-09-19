import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class VisitorOrderHistoryController extends GetxController {



  final TextEditingController searchController = TextEditingController();

  static VisitorOrderHistoryController? instance =Get.put(VisitorOrderHistoryController());

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






  // Returns the list respecting the selectedStatusFilter
  List<Map<String, dynamic>> get filteredList {
    final list = purchases;
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
  
