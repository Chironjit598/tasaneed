import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';
import '../../../../../component/image/common_image.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_string.dart';
import '../../../grandle_gallery/presentation/controller/controller/artist_details_controller.dart';

class ArtistDetailsHeadingSection extends StatelessWidget {
  const ArtistDetailsHeadingSection({super.key});

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
                      imageSrc: AppImages.manBg),

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
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 4, color: AppColors.white)
                        ),
                        child: ClipOval(
                          child: CommonImage(
                            height: 100,
                              width: 100,
                              fill: BoxFit.cover,


                              imageSrc: AppImages.female),
                        ),
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
                            text: "John Henry").start,
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
                        color: AppColors.bodyClr,
                        fontSize: 12,fontWeight: FontWeight.w400,
                        maxLines: 3,
                        textAlign: TextAlign.start,
                        text: "An abstract painter known for her bold use of color and geometric shapes. Her work explores the intersection between nature and human emotions. Each piece invites"),
                    23.height,


                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                height: 1,
                width: double.infinity,
                color: AppColors.stroke,
              ),

              8.height,
              CommonText(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.titleColor,
                  left: 20,
                  text: AppString.featuredRepresentation).start,

              12.height,

              Container(
                margin: EdgeInsets.only(left: 20.w),

                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                    itemCount: 3,
                    itemBuilder: (context, index){
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 3),
                    margin: EdgeInsets.only(right: 10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.stroke
                    ),
                    child: Row(
                      children: [
                        CommonImage(imageSrc: AppImages.ellips),
                        
                        CommonText(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            left: 4,
                            color: AppColors.bodyClr,
                            text: "Gagosian")
                      ],
                    ),
                  );
                }),
              ),

              16.height,

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 26.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                          width: 130.w,
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
                          width: 130.w,
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
