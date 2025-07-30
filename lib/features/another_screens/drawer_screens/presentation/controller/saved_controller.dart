
import 'package:get/get.dart';

class SavedController extends GetxController{
  String isSelected="art";


  updateCategorySelected({type}){
    isSelected=type;
    update();

  }
}