import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/button/common_button.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

import '../../../../../config/route/app_routes.dart';
import '../../../user_home/presentation/widgets/arts_item.dart';
import '../widgets/banner_dot_indecator.dart';

class GrandleGalleryScreen extends StatelessWidget {
  const GrandleGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       surfaceTintColor: AppColors.transparent,
        shadowColor: AppColors.transparent,
        title: CommonText(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.titleColor,
            text: AppString.artDetails),
        leading: InkWell(

            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios,size: 23.sp, color: AppColors.titleColor,)),
      ),
      
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Stack(
                    children: [
                      CommonImage(
                          height: 300,
                          width: double.infinity,
                          imageSrc: AppImages.arts),
                      Positioned(

                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Column(
                            children: [
                              BannerDotIndecator(selectIndex: 0),
                              CommonText(
                                  fontSize: 12,
                                  top: 3,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.white,
                                  text: "100+ people have shown interest in this artwork")
                            ],
                          ))
                    ],
                  ),
                  CommonText(
                    top: 15,
        
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      text: "Whispers of the Forest"),
        
                  CommonText(
                    top: 5,
        
                      fontSize: 12,
        
                      fontWeight: FontWeight.w400,
                      color: AppColors.bodyClr,
                      text: "Abstractt"),
        
                  15.height,
        
                  CommonText(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      text: AppString.description),
        
                  CommonText(
                      maxLines: 50,
                      top: 8,
                      textAlign: TextAlign.start,
                      fontSize: 14,
                      color: AppColors.bodyClr,
                      fontWeight: FontWeight.w400,
                      text: "Get a 2nd hand MacBook Pro in excellent condition, featuring powerful performance, sleek design, and reliable battery life See all"),
        
                  11.height,
        
                  Container(height: 1,
        
                  color: AppColors.normalGray2,),
        
                  20.height,
        
                  Row(children: [
                    
                    CommonText(
        
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.titleColor,
                        text: "Medium: "),
        
                    CommonText(
                      left: 5,
        
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.titleColor,
                        text: "Watercolor on paper"),
                  ],),
                  4.height,
                  Row(children: [
        
                    CommonText(
        
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.titleColor,
                        text: "Dimensions:"),
        
                    CommonText(
                      left: 5,
        
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.titleColor,
                        text: " 13 × 15 5/8 in (33 × 39.7 cm)"),
                  ],),
        
                  4.height,
                  Row(children: [
        
                    CommonText(
        
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.titleColor,
                        text: "Includes:"),
        
                    CommonText(
                      left: 5,
        
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.titleColor,
                        text: "Original frame"),
                  ],),
        
                  4.height,
                  Row(children: [
        
                    CommonText(
        
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.titleColor,
                        text: "Status:"),
        
                    CommonText(
                      left: 5,
        
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.titleColor,
                        text: "Unique work"),
                  ],),
        
                  4.height,
                  Row(children: [
        
                    CommonText(
        
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.titleColor,
                        text: "Status:"),
        
                    CommonText(
                      left: 5,
        
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.titleColor,
                        text: "Unique work"),
                  ],),
        
                  4.height,
                  Row(children: [
        
                    CommonText(
        
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.titleColor,
                        text: "Category:"),
        
                    CommonText(
                      left: 5,
        
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.titleColor,
                        text: "Work on Paper"),
                  ],),
        
                  4.height,
                  Row(children: [
        
                    CommonText(
        
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.titleColor,
                        text: "Authentication: "),
        
                    CommonText(
                      left: 5,
        
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.titleColor,
                        text: "Hand-signed by artist"),
        
        
                  ],),
        
                  9.height,
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: AppColors.normalGray2,
                  ),
        
                  20.height,
                  CommonText(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      text: AppString.aboutArtist),
        
                  17.height,
        
                  InkWell(
                    onTap: (){
                      Get.toNamed(AppRoutes.artistDetailsScreen);
                    },
                    child: Row(
                      children: [
                        ClipOval(
                          child: CommonImage(
                              height: 40,
                              width: 40,
                              fill: BoxFit.cover,
                              imageSrc: AppImages.female),
                        ),

                        8.width,

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.titleColor,
                                text: "John Currin"),

                            CommonText(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.titleColor,
                                text: "American , B 1960"),
                          ],
                        ),

                        Spacer(),

                        Container(
                          padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 17.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.r),
                            border: Border.all(color: AppColors.stroke),
                            color: AppColors.transparent
                          ),
                        child: CommonText(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            text: AppString.follow),
                        )
                      ],
                    ),
                  ),
                  
                  12.height,
                  
                  CommonText(

                      maxLines: 5,
                      color: AppColors.bodyClr,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.start,
                      text: "John Currin’s provocative portraits blend satirical exaggeration with grotesque beauty, masterfully ....Read more.."),


                  12.height,
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: AppColors.normalGray2
                  ),

                  CommonText(
                      fontSize: 16,
                      top: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.titleColor,
                      text: AppString.gallery),
                  
                  
                  12.height,
                  
                  InkWell(
                    onTap: (){
                      Get.toNamed(AppRoutes.grandleGallery);
                    },
                    child: Row(
                      children: [
                        CommonImage(
                            height: 34,
                            width: 34,
                            imageSrc: AppImages.elips),

                        8.width,

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                                fontSize: 14,
                                color: AppColors.titleColor,
                                fontWeight: FontWeight.w500,
                                text: "The Verdant Contemporary "),

                            CommonText(
                                fontSize: 12,
                                color: AppColors.bodyClr,
                                fontWeight: FontWeight.w400,
                                text: "(Est. 2018)"),

                          ],
                        )
                      ],
                    ),
                  ),
                  
                  CommonText(
                      top: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.bodyClr,
                      fontSize: 14,
                      textAlign: TextAlign.start,
                      maxLines: 5,
                      text: "Get a 2nd hand MacBook Pro in excellent condition, featuring powerful performance, sleek design, and reliable battery...Read more..")


               ,12.height,



                  Container(
                    height: 1,
                    width: double.infinity,
                    color: AppColors.normalGray2,
                  ),
                  
                  CommonText(
                    top: 16,


                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.titleColor,
                      text: "Other works by John Currin"),
                  16.height,

                  SizedBox(
                    height: 182.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return InkWell(

                            onTap: (){
                              Get.toNamed(AppRoutes.artDetailsScreen);
                            },
                            child: ArtsItem());
                      },
                    ),
                  ),

                  50.height,

                  CommonText(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                      text: "\$2,500"),

                  10.height,
                  
                  Row(
                    children: [
                      Expanded(
                        child: CommonButton(
                          buttonRadius: 60,
                            borderColor: AppColors.titleColor,
                            buttonColor: AppColors.transparent,
                            titleColor: AppColors.titleColor,
                        
                            titleText: AppString.makeAnOffer),
                      ),

                      16.width,


                      Expanded(
                        child: CommonButton(
                            buttonRadius: 60,
                            onTap: (){
                              Get.toNamed(AppRoutes.checkOutScreen);
                            },




                            titleText: AppString.purchase),
                      ),
                    ],
                  )

                ],
              ),
            ),

            50.height
            
        
          ],
        ),
      ),
    );
  }
}
