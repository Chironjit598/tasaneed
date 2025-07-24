
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../component/bottom_nav_bar/common_bottom_bar.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_string.dart';
import '../controller/nunny_booking_controller.dart';
import '../widgets/history_item.dart';


class NunnyBookingScreen extends StatelessWidget {
  const NunnyBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.transparent,
        shadowColor: AppColors.transparent,        backgroundColor: AppColors.white,
        leading: InkWell(

            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios, size: 23.sp,color: AppColors.titleColor,)),
        title: GetBuilder(
          init: NunnyBookingController(),
          builder: (controller) {
            return CommonText(

                fontSize: 16,
                fontWeight: FontWeight.w600,
                text:controller.bookingType=="history"?

                AppString.bookingHistory:controller.bookingType=="upComing"?AppString.upcomingBooking:controller.bookingType=="onGoing"?AppString.onGoingBooking:AppString.newBookingRequest);
          }
        ),
      ),
      body: GetBuilder(
        init: NunnyBookingController(),
        builder: (controller) {
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w
            ),
            child: ListView.builder(
                itemCount: 5,


                itemBuilder: (context, index){
                  return HistoryItem(status: controller.bookingType,);


                }),
          );
        }
      ),
      
      bottomNavigationBar: GetBuilder(
        init: NunnyBookingController(),
        builder: (controller) {
          return controller.bookingType=="history"? CommonBottomNavBar(currentIndex: 1):SizedBox();
        }
      ),
    );
  
    
  }
  
}
