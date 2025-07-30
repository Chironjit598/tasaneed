import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/features/another_screens/learning_materials_details/presentation/controller/learning_materials_details_controller.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class LearningHeadingSection extends StatelessWidget {
  const LearningHeadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: LearningMaterialDetailsController(),
      builder: (controller) {
        return Column(
          children: [
            10.height,

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: CommonImage(
                      width: Get.width,
                      imageSrc: AppImages.learningBanner,
                    ),
                  ),

                  15.height,

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(
                        left: 15,
                        textAlign: TextAlign.start,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.titleColor,
                        bottom: 8,
                        text: "6-Week Acrylic Painting Workshop Kit",
                      ).start,

                      Row(
                        children: [
                          CommonText(
                            left: 15,
                            textAlign: TextAlign.start,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.bodyClr,

                            text: "Total Video: 5",
                          ).start,

                          16.width,

                          Icon(size: 18, Icons.watch_later_outlined),

                          CommonText(
                            left: 5,
                            textAlign: TextAlign.start,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.bodyClr,

                            text: "5 H 3min",
                          ),
                        ],
                      ),

                      13.height,
                    ],
                  ),
                ],
              ),
            ),

            11.height,

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.stroke),
                borderRadius: BorderRadius.circular(12.r),
              ),

              child: Row(
                children: [
                  CommonImage(
                    fill: BoxFit.cover,
                    imageSrc: AppImages.instationLogo,
                  ),

                  10.width,

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.titleColor,
                        text: "Graphic Institute Uk",
                      ),

                      CommonText(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.bodyClr,
                        text: "(Est. 2018)",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            16.height,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            InkWell(
                onTap: (){
                  controller.updateType(type: controller.updateType(type: "overview"));
                },
                child: Column(
                  children: [
                    CommonText(
                        color: AppColors.titleColor,
                        fontSize: 16,
                        bottom: 8,
                        fontWeight: controller.isType=="overview"? FontWeight.w500:FontWeight.w400,
                        text: AppString.overview,
                      ),

                    controller.isType=="overview"? Container(
                      width: 110.w,
                      height: 5,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(6.r),
                            topRight:Radius.circular(6.r))
                      ),
                    ):SizedBox()
                  ],
                ),
              ),

                InkWell(
                  onTap: (){
                    controller.updateType(type: controller.updateType(type: "lessons"));
                  },
                  child: Column(
                    children: [
                      CommonText(
                        color: AppColors.titleColor,
                        fontSize: 16,
                        bottom: 6,
                        fontWeight: controller.isType=="lessons"? FontWeight.w500:FontWeight.w400,
                        text: AppString.lessons,
                      ),

                      controller.isType=="lessons"? Container(
                        width: 110.w,
                        height: 5,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.only(
                                topLeft:Radius.circular(6.r),
                                topRight:Radius.circular(6.r))
                        ),
                      ):SizedBox()
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      }
    );
  }
}
