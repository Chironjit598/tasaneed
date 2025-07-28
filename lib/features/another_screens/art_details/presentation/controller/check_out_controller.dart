import 'package:get/get.dart';

class CheckOutController extends GetxController{
  bool isTermsAndCondition=false;


  updateTermsAndCondition(){
    isTermsAndCondition=!isTermsAndCondition;
    update();
  }
}