import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/config/route/app_routes.dart';
import 'package:tasaned_project/features/another_screens/user_home/presentation/widgets/popular_artist_item_see_all.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';


class PopularArtistScreen extends StatelessWidget {
  const PopularArtistScreen({super.key});


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
            text: AppString.popularArtist),
        leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios, size: 23.sp,color: AppColors.titleColor,)),
      ),

      body: Column(
        children: [
          10.height,




          Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.w),
              child: GridView.builder(

                  itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,  // Number of columns
                    crossAxisSpacing: 1, // Horizontal space between items
                    mainAxisSpacing:7 , // Vertical space between items
                  ), itemBuilder: (context, index){

                return InkWell
                (
                  onTap: (){
                    Get.toNamed(AppRoutes.artistDetailsScreen);
                   
                  },
                  child: PopularArtistItemSeeAll());
              }),
            ),
          )

        ],
      ),
    );
  }
}
