import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/component/text_field/common_text_field.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

import '../widgets/my_list_item.dart';
import '../widgets/my_purchase_item.dart';

class MyPurchaseScreen extends StatelessWidget {
  const MyPurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.myListBg,
      appBar: AppBar(
        title: CommonText(
            fontSize: 16,
            fontWeight: FontWeight.w600,

            color: AppColors.titleColor,
            text: AppString.purchaseHistory),
        backgroundColor: AppColors.white,
        shadowColor: AppColors.transparent,
        surfaceTintColor: AppColors.transparent,
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios, size: 23.sp,color: AppColors.titleColor,)),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
        
              16.height,
        
              CommonTextField(
                suffixIcon: Icon(Icons.search, color: AppColors.bodyClr,),
                borderColor: AppColors.stroke,
                hintText: AppString.search,
              ),

              SizedBox(
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return MyPurchaseItem();
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
