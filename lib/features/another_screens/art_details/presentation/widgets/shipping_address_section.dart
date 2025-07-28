
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

import '../../../../../component/image/common_image.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../component/text_field/common_text_field.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_images.dart';
import '../../../../../utils/constants/app_string.dart';

class ShippingAddressSection extends StatelessWidget {
  const ShippingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        10.height,

        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: AppColors.stroke)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(12.r),
                height: 48.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(8.r), topLeft: Radius.circular(8.r))
                ),
                child: Row(
                  children: [
                    Icon(
                        size: 26.sp,
                        color: AppColors.white,
                        Icons.home_outlined),

                    6.width,

                    CommonText(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                        text: AppString.shippingAddress),
                    Spacer(),
                    CommonImage(
                        height: 24,
                        width: 24,
                        imageSrc: AppImages.editIcon)
                  ],
                ),
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    12.height,
                    Row(
                      children: [
                        Icon(

                            size: 20.sp,
                            color: AppColors.bodyClr,
                            Icons.person_outline_sharp),
                        6.width,

                        CommonText(

                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.bodyClr,
                            text: "Jack Taylor")
                      ],
                    ),

                    15.height,
                    Row(
                      children: [
                        Icon(

                            size: 20.sp,
                            color: AppColors.bodyClr,
                            Icons.phone_callback),
                        6.width,

                        CommonText(

                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.bodyClr,
                            text: "+123456789101")
                      ],
                    ),


                    15.height,
                    Row(
                      children: [
                        Icon(

                            size: 20.sp,
                            color: AppColors.bodyClr,
                            Icons.location_on_outlined),
                        6.width,

                        Expanded(
                          child: CommonText(
                              textAlign: TextAlign.start,
                              maxLines: 2,

                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.bodyClr,
                              text: "+123 Maple Street ,Apt 456, Toronto, ON M5A 1A1 ,Canada"),
                        )
                      ],
                    ),

                    12.height


                  ],
                ),
              ),




            ],
          ),
        ),

        24.height,

        CommonText(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.titleColor,
            text: AppString.deliveryOptions).start,

        12.height,

        CommonTextField(
          hintText: AppString.chooseDeliveryOption,
          borderColor: AppColors.bodyClr,
          suffixIcon: Icon(Icons.keyboard_arrow_down_rounded,color: AppColors.bodyClr,),
        ),


        24.height,

        CommonText(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.titleColor,
            text: AppString.paymentMethod).start,

        12.height,

        CommonTextField(
          hintText: AppString.choosePaymentOption,
          borderColor: AppColors.bodyClr,
          suffixIcon: Icon(Icons.keyboard_arrow_down_rounded,color: AppColors.bodyClr,),
        ),

      ],
    );
  }
}
