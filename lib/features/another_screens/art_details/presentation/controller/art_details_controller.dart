import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';

class ArtDetailsController extends GetxController {
  final PageController pageController = PageController();
  int currentIndex = 0;
  bool isFollowing = false;

  // Make an Offer popup controllers
  final TextEditingController offerAmountCtrl = TextEditingController(text: '15');
  final TextEditingController offerMessageCtrl = TextEditingController();

  final List<String> images = [
    AppImages.arts,
    AppImages.exhibitionScreen,
    AppImages.learningBanner,
  ];

  void setIndex(int i) {
    currentIndex = i;
    update();
  }

  void toggleFollow() {
    isFollowing = !isFollowing;
    update();
  }

  @override
  void onClose() {
    pageController.dispose();
    offerAmountCtrl.dispose();
    offerMessageCtrl.dispose();
    super.onClose();
  }
}
