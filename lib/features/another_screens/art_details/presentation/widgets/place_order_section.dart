import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/button/common_button.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/config/route/app_routes.dart';
import 'package:tasaned_project/features/another_screens/art_details/presentation/controller/check_out_controller.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class PlaceOrderSection extends StatelessWidget {
  const PlaceOrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckOutController>(
      builder: (controller) {
        return Container(
          width: double.infinity,

          padding: EdgeInsets.all(24),
          margin: EdgeInsets.only(top: 31.h
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(24.r),
                topLeft: Radius.circular(24.r)),
            border: Border(top: BorderSide(
            width: 2,
            color: AppColors.stroke))
          ),

          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                CommonText(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.bodyClr,
                    text:AppString.itemCost),
                CommonText(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.titleColor,
                    text:"\$449.97"),
              ],),
              16.height,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                CommonText(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.bodyClr,
                    text:AppString.shippingFee),
                CommonText(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.titleColor,
                    text:"\$29.00"),

            


              ],),

              16.height,

              DottedLine(
                direction: Axis.horizontal,
                lineLength: double.infinity,
                lineThickness: 1,
                dashLength: 4,
                dashColor: AppColors.stroke,
              ),
        16.height,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  CommonText(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: AppColors.bodyClr,
                      text:AppString.totalPrice),
                  CommonText(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.titleColor,
                      text:"\$29.00"),
                ],),


              19.height,

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: Checkbox(
                        activeColor: AppColors.primaryColor,
                        value: controller.isTermsAndCondition, onChanged: (value){
                      controller.updateTermsAndCondition();
                    }),
                  ),

                  10.width,

                  Flexible(
                    child: RichText(
                      text: TextSpan(
                        text:  AppString.iHaveReadAndAgreeToTheWebsite, // প্রথম অংশ
                        style: TextStyle(
                          color: AppColors.bodyClr,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400
                        ),
                        children: <TextSpan>[
                    
                          TextSpan(recognizer: TapGestureRecognizer()..onTap=(){

                          },
                            text:AppString.termsOfServices,
                            style: TextStyle(
                                color: AppColors.titleColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),

                          TextSpan(
                            text:"*",
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              
              24.height,
              
              CommonButton(
                onTap: (){
                  Get.toNamed(AppRoutes.paymentConfirmationScreen);
                },
                  buttonRadius: 60,
                  titleText: AppString.placeOrder),

              30.height

            ],
          ),
        );
      }
    );
  }
}
