import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/component/image/common_image.dart';
import 'package:tasaned_project/utils/constants/app_colors.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';

class DeletePopUp{
  static deletePopUp(){
    showDialog(

        context: Get.context!,

        builder: (context){
          return AlertDialog(
            backgroundColor: AppColors.white,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                
                CommonImage(imageSrc: AppImages.waring)
                
              ],
            ),
          );
        });
  }
}