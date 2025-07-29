import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class MyListingScreen extends StatelessWidget {
  const MyListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.myListBg,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.transparent,
        shadowColor: AppColors.transparent,
        title: CommonText(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.titleColor,
          text: AppString.myListing,
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          size: 23.sp,
          color: AppColors.titleColor,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              12.height,

              Row(
                children: [
                  Icon(
                    size: 20.sp,
                    color: AppColors.titleColor,
                    Icons.filter_alt_outlined,
                  ),

                  CommonText(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.titleColor,
                    text: AppString.filter,
                  ),

                  Spacer(),

                  CommonText(
                    fontSize: 12,
                    right: 6,
                    fontWeight: FontWeight.w500,
                    color: AppColors.titleColor,
                    text: AppString.filter,
                  ),

                  Icon(
                    size: 20.sp,
                    color: AppColors.titleColor,
                    Icons.sort_outlined,
                  ),
                ],
              ),

              15.height,

              SizedBox(
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                      padding: EdgeInsets.all(12.r),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12.r),
                      ),

                      child: Row(
                        children: [
                          CommonImage(
                            height: 80,
                            width: 100,
                            borderRadius: 8,

                            imageSrc: AppImages.arts,
                          ),

                          6.width,

                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CommonText(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.titleColor,
                                      text: "Whispers of the Forest",
                                    ),

                                    Icon(
                                      color: AppColors.titleColor,
                                      Icons.more_vert,
                                    ),
                                  ],
                                ),

                                6.height,

                                Row(


                                  children: [
                                    ClipOval(
                                      child: CommonImage(
                                        height: 25,
                                        width: 25,
                                        fill: BoxFit.cover,
                                        imageSrc: AppImages.female,
                                      ),
                                    ),

                                   CommonText(
                                     fontSize: 12,
                                   fontWeight: FontWeight.w400,
                                   color: AppColors.bodyClr,
                                   left: 5,
                                   text: "John Doe")
                                  ],
                                ),

                                6.height,

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,


                                  children: [


                                   CommonText(
                                     fontSize: 12,
                                   fontWeight: FontWeight.w600,
                                   color: AppColors.primaryColor,
                                   left: 5,
                                   text: "\$450"),

                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade50,
                                        borderRadius: BorderRadius.circular(20.r)
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 15.w, vertical: 5.h
                                      ),
                                      child: CommonText(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.green,
                                          text: "Available"),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
