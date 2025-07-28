import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/text/common_text.dart';
import 'package:tasaned_project/config/route/app_routes.dart';
import 'package:tasaned_project/features/another_screens/user_home/presentation/widgets/arts_item.dart';
import 'package:tasaned_project/features/another_screens/user_home/presentation/widgets/category_item.dart';
import 'package:tasaned_project/features/another_screens/user_home/presentation/widgets/popular_artist_item.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

import 'exhibition_item.dart';

class ListItemSection extends StatelessWidget {
  const ListItemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        20.height,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
              text: AppString.featureArts,
            ),

            InkWell(
              onTap: (){
                Get.toNamed(AppRoutes.featureArtsScreen, arguments: {
                  "title":AppString.featureArts
                });
              },
              child: CommonText(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.bodyClr,
                text: AppString.seeAll,
              ),
            ),
          ],
        ),

        16.height,

        SizedBox(
          height: 182.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return InkWell(

                  onTap: (){
                    Get.toNamed(AppRoutes.artDetailsScreen);
                  },
                  child: ArtsItem());
            },
          ),
        ),
        20.height,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
              text: AppString.recentlyViewed,
            ),

            InkWell(
              onTap: (){
                Get.toNamed(AppRoutes.featureArtsScreen, arguments: {
                  "title":AppString.featureArts
                });
              },

              child: CommonText(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.bodyClr,
                text: AppString.seeAll,
              ),
            ),
          ],
        ),

        16.height,

        SizedBox(
          height: 182.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return InkWell(

                  onTap: (){
                    Get.toNamed(AppRoutes.artDetailsScreen);
                  },
                  child: ArtsItem());
            },
          ),
        ),


        20.height,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
              text: AppString.category,
            ),

            InkWell(
              onTap: (){
                Get.toNamed(AppRoutes.categoryScreen);
              },
              child: CommonText(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.bodyClr,
                text: AppString.seeAll,
              ),
            ),
          ],
        ),

        16.height,

        SizedBox(
          height: 80.h,
          child:ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index){

            return CategoryItem();
          })
          ,
        ),

        20.height,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
              text: AppString.popularArtist,
            ),

            InkWell(
              onTap: (){
               Get.toNamed(AppRoutes.popularArtistScreen);
              },
              child: CommonText(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.bodyClr,
                text: AppString.seeAll,
              ),
            ),
          ],
        ),

        16.height,

        SizedBox(
          height: 87.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return PopularArtistItem();
            },
          ),
        ),






        20.height,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
              text: AppString.upcomingExhibition,
            ),

            InkWell(
              onTap: (){
                Get.toNamed(AppRoutes.upComingExhibitionScreen);
              },
              child: CommonText(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.bodyClr,
                text: AppString.seeAll,
              ),
            ),
          ],
        ),

        16.height,

        SizedBox(
          height: 190.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return ExhibitionItem();
            },
          ),
        ),
     20.height,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
              text: AppString.recommendedArts,
            ),

            InkWell(
              onTap: (){
                Get.toNamed(AppRoutes.featureArtsScreen, arguments: {
                  "title":AppString.recommendedArts
                });
              },
              child: CommonText(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.bodyClr,
                text: AppString.seeAll,
              ),
            ),
          ],
        ),

        16.height,

        SizedBox(
          height: 182.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: (){
                    Get.toNamed(AppRoutes.artDetailsScreen);
                  },
                  child: ArtsItem());
            },
          ),
        ),


      ],
    );
  }
}
