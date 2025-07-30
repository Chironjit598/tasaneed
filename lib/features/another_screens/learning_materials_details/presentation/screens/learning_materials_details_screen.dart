import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/features/another_screens/learning_materials_details/presentation/widgets/learning_heading_section.dart';
import 'package:tasaned_project/features/another_screens/learning_materials_details/presentation/widgets/learning_lessions_section.dart';
import 'package:tasaned_project/features/another_screens/learning_materials_details/presentation/widgets/learning_overview_section.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

import '../controller/learning_materials_details_controller.dart';

class LearningMaterialsDetailsScreen extends StatelessWidget {
  const LearningMaterialsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF9FFFFFF),
      appBar: AppBar(
        actions: [
          Container(

            padding: EdgeInsets.all(5.r),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
              border: Border.all(color: AppColors.stroke)
            ),
            child: Icon(
                color: AppColors.red,
                size: 18,



                Icons.favorite),
          ),


          20.width
        ],
        leading: InkWell(

            onTap:(){
              Get.back();
            },

            child: Icon(Icons.arrow_back_ios, size: 23.sp, color: AppColors.titleColor,)),
        backgroundColor: AppColors.white,
        shadowColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        title: CommonText(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.titleColor,
            text: AppString.learningMaterials),
      ),

      body: SingleChildScrollView(
        child: GetBuilder(
          init: LearningMaterialDetailsController(),
          builder: (controller) {
            return Column(
              children: [

                LearningHeadingSection(),

                24.height,

                controller.isType=="overview"?LearningOverviewSection():LearningLesionsSection()


              ],
            );
          }
        ),
      ),
    );
  }
}
