import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/config/route/app_routes.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

import '../widgets/exhibition_item.dart';

class UpComingExhibitionScreen extends StatelessWidget {
const  UpComingExhibitionScreen({super.key});


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
            text: AppString.upcomingExhibition),
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios, size: 23.sp,color: AppColors.titleColor,)),
      ),

      body: Column(
        children: [

          Row(children: [

            Expanded(
              flex: 1,
              child: Container(
                height: 44.h,
                decoration: BoxDecoration(
                    color: AppColors.searchBg,
                    border: Border(bottom: BorderSide(color: AppColors.stroke), right: BorderSide(color: AppColors.stroke))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        size: 18.sp,
                        color: AppColors.bodyClr,
                        Icons.sort_outlined),

                    CommonText(
                        fontSize: 16,
                        left: 3,
                        fontWeight: FontWeight.w600,
                        color: AppColors.bodyClr,
                        text: AppString.sort)
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 44.h,
                decoration: BoxDecoration(
                    color: AppColors.searchBg,
                    border: Border(bottom: BorderSide(color: AppColors.stroke), right: BorderSide(color: AppColors.stroke))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        size: 18.sp,
                        color: AppColors.bodyClr,
                        Icons.filter_alt_rounded),

                    CommonText(
                        fontSize: 16,
                        left: 3,
                        fontWeight: FontWeight.w600,
                        color: AppColors.bodyClr,
                        text: AppString.filter)
                  ],
                ),
              ),
            ),

          ],),

          15.height,


          Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.w),
              child: GridView.builder(

                  itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,  // Number of columns
                    crossAxisSpacing: 1, // Horizontal space between items
                    mainAxisSpacing:20 ,

                    mainAxisExtent: 190.h
                    // Vertical space between items
                  ), itemBuilder: (context, index){

                return InkWell(
                  
                  onTap: (){
                    Get.toNamed(AppRoutes.exhibitionDetailsScreen,
                    arguments: {
                      "title": "User Home",
                    }
                    
                    );
                  },
                  child: ExhibitionItem());
              }),
            ),
          )

        ],
      ),
    );
  }
}
