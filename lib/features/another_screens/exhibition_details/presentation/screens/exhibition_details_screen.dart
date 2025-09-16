import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/button/common_button.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/features/another_screens/exhibition_details/presentation/widget/art_item.dart';
import 'package:tasaned_project/features/another_screens/user_home/presentation/widgets/popular_artist_item_see_all.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class ExhibitionDetailsScreen extends StatelessWidget {
  const ExhibitionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        shadowColor: AppColors.transparent,
        surfaceTintColor: AppColors.transparent,
        leading: InkWell(
          onTap: () => Get.back(),
          child: Icon(Icons.arrow_back_ios, size: 18.sp, color: AppColors.titleColor),
        ),
        title: CommonText(
          text: AppString.exhibitionDetails,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.titleColor,
        ),
        actions: [
          Icon(Icons.favorite_border_outlined, size: 18.sp, color: AppColors.titleColor),
          14.width,
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Banner with virtual tour tag
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Stack(
                    children: [
                      CommonImage(
                        height: 200.h,
                        width: double.infinity,
                        fill: BoxFit.cover,
                        imageSrc: AppImages.exhibitionScreen,
                      ),
                      Positioned(
                        top: 12,
                        right: 12,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(20.r),
                            
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.play_circle_outline, size: 16.sp, color: AppColors.white),
                              6.width,
                              CommonText(
                                text: AppString.virtualTour,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                14.height,

                // Title + Curated by
                CommonText(
                  text: 'Modern Abstractions',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.titleColor,
                ),
                6.height,
                Row(
                  children: [
                    CommonText(
                      text: 'Curated by ',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.bodyClr,
                    ),
                    CommonText(
                      text: 'Mark Cena',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor,
                    ),
                  ],
                ),

                16.height,

                // About the Exhibition
                _box(
                  title: AppString.aboutTheExhibition,
                  child: CommonText(
                    text:
                        'Immerse yourself in a captivating collection of contemporary abstract artworks that challenge perception and ignite imagination. Features 30+ pieces from renowned international artists.',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.bodyClr,
                    textAlign: TextAlign.start,
                    maxLines: 10,
                  ),
                ),

                // Exhibition Details
                _box(
                  title: AppString.exhibitionDetails,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _detail(
                        icon: Icons.calendar_month_outlined,
                        label: AppString.duration,
                        value: '15 July 25 - 30 July 25',
                        subValue: '4 Days Remaining',
                        subColor: Colors.green,
                      ),
                      12.height,
                      _detail(
                        icon: Icons.access_time,
                        label: AppString.visitingHour,
                        value: '10:00 am - 6:00 pm (Monday Closed)',
                      ),
                      12.height,
                      _detail(
                        icon: Icons.location_on_outlined,
                        label: AppString.venue,
                        value: 'The Art Collective Gallery, New York',
                      ),
                      12.height,
                      _detail(
                        icon: Icons.confirmation_number_outlined,
                        label: AppString.tickerPrice,
                        value: 'General : 18\$',
                      ),
                    ],
                  ),
                ),

                // Gallery / Museum

                Container(
                  padding: EdgeInsets.all(16.r),

                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: AppColors.stroke),
                  ),

                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18.r,
                        backgroundColor: AppColors.stroke,
                        child: ClipOval(
                          child: CommonImage(height: 40.h, width: 40.h, imageSrc: AppImages.ellips, fill: BoxFit.cover),
                        ),
                      ),
                      10.width,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          CommonText(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.bodyClr,
                            text: "Gallery / Museum"),
                          CommonText(
                            text: 'The Art Gallery',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.titleColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),


             
                20.height,

                // Featured Artists
                CommonText(
                  text: 'Featured Artists',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.titleColor,
                ),
                10.height,
                SizedBox(
                  height: 120.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    separatorBuilder: (_, __) => 14.width,
                    itemBuilder: (context, index) {
                      return ArtItem();},
                  ),
                ),

              50.height,
              ],
              
            ),
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
          border: Border(top: BorderSide(color: AppColors.stroke)),
        ),
        child: CommonButton(onTap: () {}, titleText: AppString.getTickets),
      ),
    );
  }

  Widget _box({required String title, required Widget child}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
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

  Widget _detail({
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
