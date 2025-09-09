import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/features/another_screens/user_resel/presentation/controller/user_resell_controller.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';

import '../widget/all_text_filed_section.dart';
import '../widget/upload_image_section.dart';

class UserReselScreen extends StatelessWidget {
  const UserReselScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFCFD),
      appBar: AppBar(
        backgroundColor: AppColors.white,
        shadowColor: AppColors.transparent,
        surfaceTintColor: AppColors.transparent,
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios, size: 23.sp,color: AppColors.titleColor,)),
        title: CommonText(text: "Resell"),
      ),

      body: SingleChildScrollView(
        child: GetBuilder(
          init: UserReselController(),
          builder: (controller) {
            return Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UploadImageSection(),AllTextFiledSection()
        
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
