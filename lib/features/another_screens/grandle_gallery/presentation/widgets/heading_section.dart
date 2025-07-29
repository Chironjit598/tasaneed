import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';
import '../../../../../component/image/common_image.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_string.dart';
import '../controller/controller/artist_details_controller.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ArtistDetailsController(),
      builder: (controller) {
        return Column(
          children: [

            Stack(clipBehavior: Clip.none,
              children: [
                CommonImage(
                    width: double.maxFinite,
                    imageSrc: AppImages.artistCover),

                Positioned(
                    top: 8,
                    left: 20,
                    child:InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child: Icon(Icons.arrow_back_ios,size: 20.sp,color: AppColors.white,)) ),

                Positioned(
                    left: 24,
                    bottom: -34.h
                    ,
                    child: ClipOval(
                      child: CommonImage(


                          imageSrc: AppImages.artistLogo),
                    ))
              ],
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  42.height,
                  Row(
                    children: [
                      CommonText(

                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.titleColor,
                          right: 6,
                          text: AppString.grandeGallery).start,
                      CommonImage(imageSrc: AppImages.verified),

                      Spacer(),

                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.stroke,
                            borderRadius: BorderRadius.circular(4.r)
                        ),
                        padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 5.w),
                        child: Row(
                          children: [
                            Icon(Icons.person_outline),
                            CommonText(text: AppString.follow)

                          ],
                        ),
                      ),

                      6.width,

                      Icon(Icons.chat)
                    ],
                  ),

                  5.height,

                  CommonText(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.bodyClr,
                      textAlign: TextAlign.start,
                      maxLines: 4,
                      text: "The Modern Art Museum is committed to showcasing the best of contemporary art. Our mission is to inspire creativity and foster a greater understanding of modern "),

                  23.height,


                ],
              ),
            ),

            Container(
              height: 1,
              width: double.infinity,
              color: AppColors.stroke,
            ),

            16.height,

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 26.w),
              child: Row(
                children: [
                  Column(
                    children: [
                      InkWell(

                          onTap: (){
                            controller.updateType(type: "aboutUS");
                          },
                          child: CommonText(

                              fontSize: 16,
                              fontWeight: controller.isTypeSelected=="aboutUS"?FontWeight.w600:FontWeight.w400,
                              color: controller.isTypeSelected=="aboutUS"?AppColors.titleColor:AppColors.bodyClr,
                              text: AppString.aboutUs)),
                      
                      6.height,
                      controller.isTypeSelected=="aboutUS"  ? Container(
                        height: 5,
                        width: 85.w,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(6.r), topRight: Radius.circular(6.r))
                        ),
                      ):SizedBox()
                    ],
                  ),

                  30.width,


                  Column(
                    children: [
                      InkWell(

                          onTap: (){
                            controller.updateType(type: "artWork");
                          },
                          child: CommonText(
                              fontSize: 16,
                              fontWeight: controller.isTypeSelected=="artWork"?FontWeight.w600:FontWeight.w400,
                              color: controller.isTypeSelected=="artWork"?AppColors.titleColor:AppColors.bodyClr,
                              text: AppString.artWork)),

                      6.height,
                      controller.isTypeSelected=="artWork"  ? Container(
                        height: 5,
                        width: 85.w,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(6.r), topRight: Radius.circular(6.r))
                        ),
                      ):SizedBox()
                    ],
                  ),


                  30.width,


                  Column(
                    children: [
                      InkWell(

                          onTap: (){
                            controller.updateType(type: "shows");
                          },
                          child: CommonText(
                              fontSize: 16,
                              fontWeight: controller.isTypeSelected=="shows"?FontWeight.w600:FontWeight.w400,
                              color: controller.isTypeSelected=="shows"?AppColors.titleColor:AppColors.bodyClr,
                              text: AppString.shows)),

                      6.height,
                      controller.isTypeSelected=="shows"  ? Container(
                        height: 5,
                        width: 85.w,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(6.r), topRight: Radius.circular(6.r))
                        ),
                      ):SizedBox()
                    ],
                  ),


                ],
              ),
            )
          ],
        );
      }
    );
  }
}
