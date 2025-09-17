import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/config/route/app_routes.dart';
import 'package:tasaned_project/utils/helpers/other_helper.dart';

class CreateNewExhibitionController extends GetxController {
  // Form controllers
  final titleCtrl = TextEditingController();
  final descriptionCtrl = TextEditingController();
  final startDateCtrl = TextEditingController();
  final endDateCtrl = TextEditingController();
  final visitingHoursCtrl = TextEditingController();
  final venueCtrl = TextEditingController();
  final galleryCtrl = TextEditingController();

  // Step tracker (if you add steps later)
  int currentStep = 0; // 0 = Basic Information

  Future<void> pickStartDate() async {
    await OtherHelper.openDatePickerDialog(startDateCtrl);
    update();
  }

  Future<void> pickEndDate() async {
    await OtherHelper.openDatePickerDialog(endDateCtrl);
    update();
  }

  void saveAsDraft() {
 
    Get.back();
  }

  void next() {
    // TODO: validate and go next (for now just close)
   Get.toNamed(AppRoutes.createNewExhibitionGalleryScreen);

  }

  @override
  void onClose() {
    titleCtrl.dispose();
    descriptionCtrl.dispose();
    startDateCtrl.dispose();
    endDateCtrl.dispose();
    visitingHoursCtrl.dispose();
    venueCtrl.dispose();
    galleryCtrl.dispose();
    super.onClose();
  }
}
