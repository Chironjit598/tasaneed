import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/features/another_screens/drawer_screens/presentation/controller/following_controller.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: AppColors.background,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.titleColor,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        elevation: 0,
        title: CommonText(
          text: AppString.following,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.titleColor,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
       
      ),
      body: GetBuilder<FollowingController>(
        init: FollowingController(),
        builder: (controller) {
          return ListView.separated(
            itemCount: controller.following.length,
            separatorBuilder: (_, __) => Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w),
              height: 1,
              color: AppColors.stroke,
            ),
            itemBuilder: (context, index) {
              final item = controller.following[index];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: Row(
                  children: [
                    ClipOval(
                      child: CommonImage(
                        height: 52.w,
                        width: 52.w,
                        imageSrc: item["image"]!,
                        fill: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonText(
                            text: item["name"]!,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.titleColor,
                          ),
                          SizedBox(height: 4.h),
                          CommonText(
                            text: item["role"]!,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.titleColorSecondary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
