import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasaned_project/features/another_screens/drawer_screens/presentation/controller/saved_controller.dart';
import 'package:tasaned_project/features/another_screens/drawer_screens/presentation/widgets/event_item.dart';
import 'package:tasaned_project/features/another_screens/drawer_screens/presentation/widgets/learning_medarials_item.dart';

import '../../../../../config/route/app_routes.dart';
import '../../../user_home/presentation/widgets/arts_item.dart';
import '../../../user_home/presentation/widgets/exhibition_item.dart';

class SavedScreenGridSection extends StatelessWidget {
  const SavedScreenGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SavedController(),
      builder: (controller) {
        return Padding(
          padding:  EdgeInsets.symmetric(horizontal: 23.w),
          child: Column(
            children: [
              controller.isSelected=='art'? GridView.builder(

                  itemCount: 8,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,  // Number of columns
                    crossAxisSpacing: 1, // Horizontal space between items
                    mainAxisSpacing:20 , // Vertical space between items
                  ), itemBuilder: (context, index){

                return InkWell(

                    onTap: (){
                      Get.toNamed(AppRoutes.artDetailsScreen);
                    },
                    child: ArtsItem());
              }):controller.isSelected=='exhibition'?GridView.builder(

                  itemCount: 20,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,  // Number of columns
                      crossAxisSpacing: 1, // Horizontal space between items
                      mainAxisSpacing:20 ,

                      mainAxisExtent: 190.h
                    // Vertical space between items
                  ), itemBuilder: (context, index){

                return ExhibitionItem();
              }):controller.isSelected=='events'?GridView.builder(

                  itemCount: 20,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,  // Number of columns
                      crossAxisSpacing: 1, // Horizontal space between items
                      mainAxisSpacing:20 ,

                      mainAxisExtent: 190.h
                    // Vertical space between items
                  ), itemBuilder: (context, index){

                return EventItem();
              }):GridView.builder(

                  itemCount: 20,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,  // Number of columns
                      crossAxisSpacing: 1, // Horizontal space between items
                      mainAxisSpacing:20 ,

                      mainAxisExtent: 175.h
                    // Vertical space between items
                  ), itemBuilder: (context, index){

                return LearningMedarialsItem();
              })
            ],

          ),
        );
      }
    );
  }
}
