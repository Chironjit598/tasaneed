import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';
import '../../../../component/bottom_nav_bar/common_bottom_bar.dart';
import '../../../../component/image/common_image.dart';
import '../../../../component/text/common_text.dart';
import '../../../../services/storage/storage_services.dart';
import '../../../../utils/constants/app_colors.dart';
import '../controller/profile_controller.dart';
import '../../../../utils/constants/app_images.dart';
import '../widgets/profile_all_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFCFD),


      /// Body Section Starts here
      body: GetBuilder<ProfileController>(
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              children: [
                /// User Profile Image here
            
                Stack(
                  children: [
                    CommonImage(
                        width: Get.width,

                        height: 280.h,
                        fill: BoxFit.fill,

                        imageSrc: AppImages.profileBg),


                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          45.height,
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: InkWell(
                              onTap: (){
                                Get.back();
                              },
                              child: Icon(
                                  color: AppColors.white,
                                  Icons.arrow_back_ios),
                            ).start,
                          ),

                          10.height,

                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                shape: BoxShape.circle
                            ),
                            child: ClipOval(
                              child: CommonImage(
                                  height: 100,
                                  width: 100,
                                  fill: BoxFit.fill,

                                  imageSrc: AppImages.female),
                            ),
                          ).center,

                          CommonText(
                              top: 18,
                              fontSize: 18,
                              color: AppColors.white,
                              fontWeight: FontWeight.w700,
                              text: "Mrs. Amina Okonkwo"),

                          CommonText(
                              top: 4,
                              fontSize: 12,
                              color: AppColors.white,
                              fontWeight: FontWeight.w400,
                              text: "Member / Collector"),

                          75.height,
                          ProfileAllItem()
                        ],
                      ),
                    )
                  ],
                ),



            


              ],
            ),
          );
        },
      ),

      /// Bottom Navigation Bar Section Starts here
      bottomNavigationBar:  CommonBottomNavBar(currentIndex:4),
    );
  }
}
