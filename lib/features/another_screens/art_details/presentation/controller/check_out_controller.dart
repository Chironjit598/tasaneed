import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';

class CheckOutController extends GetxController{
  bool isTermsAndCondition=false;

  // Shipping info state
  String name = AppString.shippingNameSample;
  String phone = AppString.shippingPhoneSample;
  String address = AppString.shippingAddressSample;

  // Text controllers for edit dialog
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController phoneCtrl = TextEditingController();
  final TextEditingController addressCtrl = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    nameCtrl.text = AppString.shippingNameSample;
    phoneCtrl.text = AppString.shippingPhoneSample;
    addressCtrl.text = AppString.shippingAddressSample;
  }

  void updateTermsAndCondition(){
    isTermsAndCondition=!isTermsAndCondition;
    update();
  }

  void saveShippingEdits(){
    // Keep values static from AppString; reset any user edits
    name = AppString.shippingNameSample;
    phone = AppString.shippingPhoneSample;
    address = AppString.shippingAddressSample;
    nameCtrl.text = name;
    phoneCtrl.text = phone;
    addressCtrl.text = address;
    update();
  }

  @override
  void onClose() {
    nameCtrl.dispose();
    phoneCtrl.dispose();
    addressCtrl.dispose();
    super.onClose();
  }
}