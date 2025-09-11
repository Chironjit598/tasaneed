import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/component/text_field/common_text_field.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/features/another_screens/user_home/presentation/controller/search_controller.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.titleColor),
          onPressed: Get.back,
        ),
        title: CommonText(
          text: AppString.search,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.titleColor,
        ),
      ),
      body: GetBuilder<SearchControllerX>(
        init: SearchControllerX(),
        builder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.h),
                  // Search field
                  CommonTextField(
                    controller: controller.queryController,
                    fillColor: AppColors.searchBg,
                    hintText: 'Ab',
                    textColor: AppColors.titleColor,
                    borderColor: AppColors.stroke,
                    paddingHorizontal: 16,
                    paddingVertical: 12,
                    borderRadius: 24,
                
                  ),
                  SizedBox(height: 14.h),
                  // Filters (horizontally scrollable)
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(controller.labels.length, (index) {
                        final bool selected = controller.selectedFilter == index;
                        return Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: InkWell(
                            onTap: () => controller.setFilter(index),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
                              decoration: BoxDecoration(
                                color: selected ? AppColors.primaryColor : AppColors.transparent,
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(color: selected ? AppColors.primaryColor : AppColors.stroke),
                              ),
                              child: CommonText(
                                text: controller.labels[index],
                                color: selected ? AppColors.white : AppColors.titleColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
             
             
             
                  SizedBox(height: 16.h),
                  // Results list
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.results.length,
                    separatorBuilder: (_, __) => Container(
                      margin: EdgeInsets.only(left: 20.w),
                      height: 1,
                      color: AppColors.stroke,
                    ),
                    itemBuilder: (context, index) {
                      final item = controller.results[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Row(
                          children: [
                            ClipOval(
                              child: CommonImage(
                                height: 44.w,
                                width: 44.w,
                                imageSrc: item['image']!,
                                fill: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 12.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonText(
                                    text: item['name']!,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.titleColor,
                                  ),
                                  SizedBox(height: 4.h),
                                  CommonText(
                                    text: item['role']!,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.titleColorSecondary,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
