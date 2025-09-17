import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNewEventTicketBookingController extends GetxController {
  final TextEditingController priceController = TextEditingController();
  final TextEditingController urlController = TextEditingController();

  @override
  void onClose() {
    priceController.dispose();
    urlController.dispose();
    super.onClose();
  }
}
