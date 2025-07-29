import 'package:get/get.dart';

class ExhibitionController extends GetxController{

  String isSelectedType="Overview";

  updateExhibitionType({required String type}){
    isSelectedType=type;

    update();
  }


}