import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNewEventController extends GetxController {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController overviewController = TextEditingController();
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();
  final TextEditingController visitingHoursController = TextEditingController();
  final TextEditingController venueController = TextEditingController();

  Future<void> pickStartDate(BuildContext context) async {
    final now = DateTime.now();
    final date = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(now.year - 5),
      lastDate: DateTime(now.year + 5),
    );
    if (date != null) {
      startDateController.text = _formatDate(date);
      update();
    }
  }

  Future<void> pickEndDate(BuildContext context) async {
    final now = DateTime.now();
    final date = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(now.year - 5),
      lastDate: DateTime(now.year + 5),
    );
    if (date != null) {
      endDateController.text = _formatDate(date);
      update();
    }
  }

  String _formatDate(DateTime d) => "${d.month.toString().padLeft(2, '0')}/${d.day.toString().padLeft(2, '0')}/${d.year}";

  @override
  void onClose() {
    titleController.dispose();
    descriptionController.dispose();
    overviewController.dispose();
    startDateController.dispose();
    endDateController.dispose();
    visitingHoursController.dispose();
    venueController.dispose();
    super.onClose();
  }
}
