import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

import '../../../../../component/image/common_image.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_string.dart';
import '../controller/exhibition_controller.dart';

class ExhibitionHeadingSection extends StatelessWidget {
  const ExhibitionHeadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ExhibitionController(),
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            7.height,

            Stack(
              children: [
                CommonImage(
                  width: double.infinity,
                  imageSrc: AppImages.exhibitionScreen,
                ),

                Positioned(
                  right: 12,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 7.h,
                      horizontal: 10.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.r),
                      color: AppColors.primaryColor,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.play_arrow_outlined, color: AppColors.white),
                        CommonText(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white,
                          text: AppString.virtualTour,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            16.height,

            CommonText(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.titleColor,
              text: "Modern Abstractions",
            ),

            5.height,

            Row(
              children: [
                CommonText(
                  fontSize: 12,
                  right: 5,
                  fontWeight: FontWeight.w400,
                  color: AppColors.bodyClr,
                  text: AppString.curatedBy,
                ),

                CommonText(
                  fontSize: 12,
                  right: 5,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                  text: "Mark Cena",
                ),
              ],
            ),

            17.height,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customTapItem(title: AppString.overview, type: "Overview"),
                customTapItem(title: AppString.artWork, type: "Art work")
              ],
            ),
          ],
        );
      },
    );


  }

  Widget customTapItem({title, type}){
    return GetBuilder(
      init: ExhibitionController(),
      builder: (controller) {
        return InkWell(
          onTap: (){
            controller.updateExhibitionType(type: type);
          },
          child: Column(
            children: [
              CommonText(
                fontSize: 16,
                bottom: 7,
                fontWeight: controller.isSelectedType == type
                    ? FontWeight.w500
                    : FontWeight.w400,
                text: title,
              ),



              controller.isSelectedType == type?     Container(

                height: 5,
                width: 130.w,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6.r),
                    topLeft: Radius.circular(6.r),
                  ),
                ),
              ):SizedBox(),
            ],
          ),
        );
      }
    );
  }
}
