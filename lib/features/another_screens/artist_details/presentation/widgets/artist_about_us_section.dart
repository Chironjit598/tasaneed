
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

import '../../../../../component/text/common_text.dart';

class ArtistAboutUsSection extends StatelessWidget {
  const ArtistAboutUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          16.height,
CommonText(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.titleColor,
    text: AppString.biography),

          16.height,
          CommonText(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.bodyClr,

              maxLines: 4,
              textAlign: TextAlign.start,
              bottom: 32,
              text: "John Henry is a contemporary abstract artist based in New York City. Her journey into the world of art began at an early age when she was inspired by the colors and forms of nature surrounding her childhood home in the Hudson"),


          CommonText(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.titleColor,
              text: AppString.keyAchievements).start,



          16.height,

          customItem(

              title: " Featured in Art World Journal 2022 for “Art in the 21st Century."),


          6.height,
          customItem(title: "Known for its dynamic exhibitions and innovative curation of contemporary art."),

        ],
      ),
    );
  }

  Widget customItem({title}){
    return   Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding:  EdgeInsets.only(top: 5.h),
          child: customPoint(),
        ),

        Flexible(
          child: CommonText(
              color: AppColors.bodyClr,
              fontSize: 14,
              left: 5,
              textAlign: TextAlign.start,
              maxLines: 2,
              fontWeight: FontWeight.w400,
              text: title),
        )
      ],
    );
  }

  Widget customPoint(){
    return  Container(
      padding: EdgeInsets.all(4.r),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(

              color: AppColors.bodyClr)
      ),
      child: Container(
        height: 3.h,
        width: 3.h,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.bodyClr
        ),
      ),
    );
  }
}
