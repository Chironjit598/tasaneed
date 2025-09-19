import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/bottom_nav_bar/common_bottom_bar.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/features/another_screens/my_collection/presentation/controller/my_collections_controller.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/features/another_screens/drawer_screens/presentation/screens/resale_art_screen.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

class MyCollectionsScreen extends StatelessWidget {
  const MyCollectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyCollectionsController>(
      init: MyCollectionsController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const CommonText(
              text: AppString.myCollections,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: AppColors.background,
          body: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            itemCount: controller.items.length,
            separatorBuilder: (_, __) => 10.height,
            itemBuilder: (context, index) {
              final item = controller.items[index];
              final String status = item['status'];
              final bool isSold = status == AppString.sold;
              return Container(
                padding: EdgeInsets.all(10.r),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: AppColors.stroke),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: CommonImage(
                        height: 60.h,
                        width: 80.h,
                        fill: BoxFit.cover,
                        imageSrc: item['image'],
                      ),
                    ),
                  16.width,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonText(
                            text: item['title'],
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.titleColor,
                          ),
                          4.height,
                          CommonText(
                            text: '\$250',
                            // Using static price per requirements
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: AppColors.primaryColor,
                          ),
                        ],
                      ),
                    ),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        PopupMenuButton<String>(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          onSelected: (val) {
                            if (val == 'edit') {
                              Get.to(() => ResaleArtScreen(order: item));
                            }
                            if (val == 'delete') controller.deleteItem(index);
                          },
                          itemBuilder: (context) => [
                            PopupMenuItem<String>(
                              value: 'edit',
                              child: Row(
                                children: const [
                                  Icon(Icons.edit, size: 18, color: AppColors.titleColor),
                                  SizedBox(width: 8),
                                  CommonText(text: AppString.edit),
                                ],
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'delete',
                              child: Row(
                                children: const [
                                  Icon(Icons.delete_outline, size: 18, color: AppColors.redClr),
                                  SizedBox(width: 8),
                                  CommonText(text: AppString.delete, color: AppColors.redClr),
                                ],
                              ),
                            ),
                          ],
                          child: const Icon(Icons.more_vert, color: AppColors.titleColor),
                        ),
                        6.height,
                        CommonText(
                          text: status,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: isSold ? AppColors.redClr : Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),

          bottomNavigationBar: CommonBottomNavBar(currentIndex: 1),
        );
      },
    );
  }
}
