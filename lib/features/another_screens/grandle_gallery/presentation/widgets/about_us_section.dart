import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_string.dart';
import 'package:tasaned_project/utils/extensions/extension.dart';

import '../../../../../component/text/common_text.dart';

class AboutUsSection extends StatelessWidget {
  const AboutUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w ),
      child: Column(
        children: [

          16.height,
          customItem(title: "Established : 1992"),


          6.height,
          customItem(title: "Location: 123 Art Street, New York City, NY 10001"),

          6.height,
          customItem(title: "Contact : Info@gmail.com"),

          16.height,

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
      children: [

        customPoint(),

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
