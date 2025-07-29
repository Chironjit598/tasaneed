
import 'package:get/get.dart';

class ArtistDetailsController extends GetxController{
  String isTypeSelected="aboutUS";

  updateType({required type}){

    isTypeSelected=type;
    update();
  }
}