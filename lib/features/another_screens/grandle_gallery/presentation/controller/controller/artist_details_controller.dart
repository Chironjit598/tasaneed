import 'package:get/get.dart';

class ArtistDetailsController extends GetxController{
  String isTypeSelected="aboutUS";
  bool isFollowing = false;

  updateType({required type}){
    isTypeSelected=type;
    update();
  }

  void toggleFollowing(){
    isFollowing = !isFollowing;
    update();
  }
}