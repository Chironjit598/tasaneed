
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/component/text_field/common_text_field.dart';
import 'package:tasaned_project/features/another_screens/drawer_screens/presentation/widgets/learning_medarials_item.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class LearningMetarialScreen extends StatelessWidget {
  LearningMetarialScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        shadowColor: AppColors.transparent,
        surfaceTintColor: AppColors.transparent,
        title: CommonText(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.titleColor,
            text: AppString.learningMaterials),
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios, size: 23.sp,color: AppColors.titleColor,)),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            10.height,
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: CommonTextField(
                suffixIcon: Container(
                  margin: EdgeInsets.all(7.r),

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColor
                    ),
                    child: Icon(Icons.search, color: AppColors.white,)),
                borderColor: AppColors.stroke,
                fillColor: AppColors.searchBg,
                hintText: AppString.searchLearningMaterials,
              ),
            ),


            15.height,


            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.w),
              child: GridView.builder(

                  itemCount: 7,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,  // Number of columns
                      crossAxisSpacing: 1, // Horizontal space between items
                      mainAxisSpacing:20 ,

                      mainAxisExtent: 190.h
                    // Vertical space between items
                  ), itemBuilder: (context, index){

                return LearningMedarialsItem();
              }),
            )

          ],
        ),
      ),
    );
  }
}
