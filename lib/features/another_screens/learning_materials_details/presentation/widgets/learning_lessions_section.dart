import 'package:flutter/material.dart';
import 'package:tasaned_project/features/another_screens/learning_materials_details/presentation/widgets/lesson_item.dart';

class LearningLesionsSection extends StatelessWidget {
  const LearningLesionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
         ListView.builder(
             itemCount: 5,
             physics: NeverScrollableScrollPhysics()
             ,
             shrinkWrap: true,
             itemBuilder: (context, index){
           return LessonItem();
         })
        ],
      ),
    );
  }
}
