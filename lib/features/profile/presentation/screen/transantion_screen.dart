import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';
import '../../../../component/image/common_image.dart';
import '../../../../component/text/common_text.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_string.dart';
import '../widgets/transaction_history_item.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios, size: 20.sp),
        ),
        centerTitle: true,
        title: CommonText(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          text: AppString.transaction,
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            16.height,
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(
                    padding: EdgeInsets.all(12.r),
                    height: 80.w,
                    width: 160.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: AppColors.searchBg),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonText(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.bodyClr,
                              text: AppString.earned,
                            ),

                            Container(
                              padding: EdgeInsets.all(5.r),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:Colors.green
                              ),
                              child: CommonImage(

                                  imageSrc: AppImages.received),
                            )
                          ],
                        ),

                        CommonText(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            text: "\$440,30")
                      ],
                    ),
                  ),


                  Container(
                    padding: EdgeInsets.all(12.r),
                    height: 80.w,
                    width: 160.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: AppColors.searchBg),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonText(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.bodyClr,
                              text: AppString.spend,
                            ),

                            Container(
                              padding: EdgeInsets.all(5.r),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:AppColors.red
                              ),
                              child: CommonImage(

                                  imageSrc: AppImages.send),
                            )
                          ],
                        ),

                        CommonText(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            text: "\$440,30")
                      ],
                    ),
                  ),
                ],
              ),
            ),



            CommonText(
                top: 25.h,
                fontSize: 16.sp,
                left: 20.w,
                bottom: 16.h,
                fontWeight: FontWeight.w500,

                text: AppString.transactionHistory).start,


            SizedBox(

              child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index){
                    return TransationHistoryItem();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
