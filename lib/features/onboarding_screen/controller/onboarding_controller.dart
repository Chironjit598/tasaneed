import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/route/app_routes.dart';
import '../../../utils/constants/app_string.dart';
import '../widgets/custom_bottom_sheet.dart';

class OnboardingController extends GetxController {
  PageController pageController = PageController();
  RxInt pageIndex = 0.obs;
  late Timer _timer;

  RxList titleList=[
    AppString.onboardingOneTitle,
    AppString.onboardingTwoTitle,
    AppString.onboardingThreeTitle,
  ].obs;


  RxList titleDes=[
    AppString.onboardingOneDes,
    AppString.onboardingOneTwoDes,
    AppString.onboardingOneThreeDes,
  ].obs;

  void scrollPageView() {
    try {
      _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
        if (pageController.page == 2) {
          pageIndex.value = 0;
          pageController.animateToPage(
            0,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeInOut,
          );
        } else {
          pageIndex.value++;
          pageController.nextPage(
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeInOut,
          );
        }
      });
    } catch (e, stackTrace) {

    }
  }

  void onInitialPage() {
    if (Get.context != null) {
      showGeneralDialog(
        context: Get.context!,
        barrierColor: Colors.transparent,
        barrierDismissible: false,
        transitionDuration: const Duration(milliseconds: 800),
        pageBuilder: (context, animation, secondaryAnimation) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1), // Start from bottom
                end: Offset.zero, // Slide to original position
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeInOut, // Smooth animation curve
                ),
              ),
              child: Obx(() => CustomBottomSheet(
                titleList: titleList,
                desList: titleDes,
                index: pageIndex.value,
                signUp: () {
                  Get.offAllNamed(AppRoutes.chooseRole);
                },
                signIn: () {
                  Get.offAllNamed(AppRoutes.signIn);
                },
              )),
            ),
          );
        },
      );
    }
  }

  @override
  void onInit() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onInitialPage();
      scrollPageView();
    });
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    _timer.cancel();
    super.onClose();
  }
}
