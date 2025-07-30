import 'package:get/get.dart';

class LearningMaterialDetailsController extends GetxController{
  String isType="overview";

  updateType({type}){
    isType=type;
    update();


  }
}