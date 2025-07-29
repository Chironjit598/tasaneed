
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import '../widgets/place_order_section.dart';
import '../widgets/shipping_address_section.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Get.back();
          },


            child: Icon(

        color: AppColors.titleColor,
        Icons.arrow_back_ios,size: 23.sp,)

        ),

        shadowColor: AppColors.transparent,
        surfaceTintColor: AppColors.transparent,
        backgroundColor: AppColors.background,
        title: CommonText(

            fontSize: 16,
            fontWeight: FontWeight.w600,
            text: AppString.checkout),),

      body: SingleChildScrollView(
        child: Column(
          children: [
        
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: ShippingAddressSection(),
            ),
        
            PlaceOrderSection()
          ],
        ),
      ),
    );
  }
}
