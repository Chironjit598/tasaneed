
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/features/another_screens/user_resel/presentation/controller/user_resell_controller.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

import '../../../../../component/text/common_text.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_string.dart';

class UploadImageSection extends StatelessWidget {
  const UploadImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: UserReselController(),
      builder: (controller) {
        return Column(
          children: [

            12.height,

            if(controller.selectedImages.isEmpty)



              DottedBorder(

                options: RectDottedBorderOptions(
                    color: AppColors.primaryColor
                ),


                child: SizedBox(
                  height: 122.w,
                  width: 335.w,
                  child: InkWell(
                    onTap: (){
                      controller.pickImages(
                          controller.maxImages -
                              controller.selectedImages.length);
                    },
                    child: Column(
                      children: [

                        24.height,
                        Icon(
                            size: 26.h,
                            Icons.image_rounded),


                        CommonText(
                            top: 8.h,

                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryColor,
                            text: AppString.tapToUploadImage),
                        CommonText(
                            top: 8.h,

                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.bodyClr,
                            text: "Photos: 0/10 : Choose your main photo first"),
                      ],
                    ),
                  ),
                ),
              ),


            15.height,

            if(controller.selectedImages.isNotEmpty)
              SizedBox(
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount:
                    controller.selectedImages.length < controller.maxImages
                        ? controller.selectedImages.length + 1
                        : controller.selectedImages.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemBuilder: (context, index) {
                      if (index == controller.selectedImages.length &&
                          controller.selectedImages.length < controller.maxImages) {
                        return GestureDetector(
                            onTap: () => controller.pickImages(
                                controller.maxImages -
                                    controller.selectedImages.length),
                            child: Container(
                                height: 120.h,
                                width: 120.w,
                                decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(8.r)),
                                child: Icon(
                                  Icons.add,
                                  color: AppColors.primaryColor,
                                  size: 40.sp,
                                )));
                      } else {
                        return Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: FileImage(
                                      File(controller.selectedImages[index])),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 5,
                              right: 5,
                              child: GestureDetector(
                                onTap: () => controller.removeImage(index),
                                child: Container(
                                  decoration:  BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.primaryColor,
                                  ),
                                  padding: EdgeInsets.all(4),
                                  child: Icon(Icons.delete,
                                      color: AppColors.white, size: 16),
                                ),
                              ),
                            )
                          ],
                        );
                      }
                    }),
              ),
          ],
        );
      }
    );
  }
}
