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

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        shadowColor: AppColors.transparent,
        leading: InkWell(
          onTap: () => Get.back(),
          child: Icon(
            Icons.arrow_back_ios,
            size: 18.sp,
            color: AppColors.titleColor,
          ),
        ),
        title: CommonText(
          text: AppString.eventDetails,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.titleColor,
          textAlign: TextAlign.center,
        ),
        actions: [
          InkWell(
            child: Icon(
              Icons.favorite_border_outlined,
              size: 18.sp,
              color: AppColors.titleColor,
            ),
          ),

          14.width,
        ],
        surfaceTintColor: AppColors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner image
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: CommonImage(
                    height: 200.h,
                    width: double.infinity,
                    fill: BoxFit.cover,
                    imageSrc: AppImages.eventImage,
                  ),
                ),
              ),

              // Title and organizer
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: 'Abstract Realities',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.titleColor,
                    ),
                    6.height,
                    Row(
                      children: [
                        CommonText(
                          text: 'Organized by ',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.bodyClr,
                        ),
                        CommonText(
                          text: 'Mark Cena',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // About the Event card
              _boxedSection(
                title: AppString.aboutTheEvent,
                child: CommonText(
                  text:
                      'Discover the future of contemporary art with works from 25 emerging artists pushing creative boundaries. This groundbreaking exhibition showcases innovative techniques. See More.',
                  fontSize: 12,
                  maxLines: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.bodyClr,
                  textAlign: TextAlign.start,
                ),
              ),

              // Event Overview
              _boxedSection(
                title: AppString.eventOverview,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      maxLines: 2,
                      text:
                          'The event is organized into four thematic sections:',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.bodyClr,
                      textAlign: TextAlign.start,
                    ),
                    8.height,
                    CommonText(
                      text: "  1.Breaking Boundaries",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.bodyClr,
                      textAlign: TextAlign.start,
                    ),

                      CommonText(
                      text: "  1.Digital Futures",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.bodyClr,
                      textAlign: TextAlign.start,
                    ),

                  
                  ],
                ),
              ),

              // Event Details
              _boxedSection(
                title: AppString.eventDetails,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _detailRow(
                      icon: Icons.schedule_outlined,
                      label: AppString.duration,
                      value: '15 July 25 - 30 July 25',
                      subValue: '4 Days Remaining',
                      subColor: Colors.green,
                    ),
                    12.height,
                    _detailRow(
                      icon: Icons.access_time,
                      label: AppString.time,
                      value: '10:00 am - 6:00 pm (Monday Closed)',
                    ),
                    12.height,
                    _detailRow(
                      icon: Icons.location_on_outlined,
                      label: AppString.venue,
                      value: 'The Art Collective Gallery, New York',
                    ),
                    12.height,
                    _detailRow(
                      icon: Icons.confirmation_number_outlined,
                      label: AppString.tickerPrice,
                      value: 'General: 18\$',
                    ),
                  ],
                ),
              ),

            
              90.height, // spacer for bottom button
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          border: Border(top: BorderSide(color: AppColors.stroke))
        ),
       
        child: CommonButton(onTap: () {}, titleText: AppString.joinEvent),
      ),
    );
  }

  Widget _boxedSection({required String title, required Widget child}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: AppColors.stroke),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: title,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.titleColor,
            ),
            10.height,
            child,
          ],
        ),
      ),
    );
  }


  Widget _detailRow({
    required IconData icon,
    required String label,
    required String value,
    String? subValue,
    Color? subColor,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18.sp, color: AppColors.bodyClr),
        10.width,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: label,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.titleColor,
                  ),
                  6.width,
                  Expanded(
                    child: CommonText(
                      text: value,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.bodyClr,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              if (subValue != null) ...[
                4.height,
                CommonText(
                  text: subValue,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: subColor ?? AppColors.titleColor,
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
