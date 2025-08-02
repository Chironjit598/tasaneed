
import 'package:get/get.dart';

import '../../../../../utils/helpers/other_helper.dart';

class UserReselController extends GetxController{
  List<String> selectedImages = [];
  final int maxImages = 10;
  bool isCheckBox=false;
  bool isFrameToggle=false;
  bool isAcceptToggle=false;

  updateFrameToggle(){
    isFrameToggle=!isFrameToggle;
    update();
  }
  updateAcceptToggle(){
    isAcceptToggle=!isAcceptToggle;
    update();
  }


  updateCheckBox(){
    isCheckBox=!isCheckBox;
    update();
  }


  Future<void> pickImages(int imageLimit) async {
    final images = await OtherHelper.pickMultipleImage(imageLimit: imageLimit);

    if (images.isNotEmpty) {
      if (selectedImages.length + images.length > maxImages) {
        Get.snackbar(
          "Limit Exceeded",
          "You can select up to $maxImages images.",
        );
      } else {
        selectedImages.addAll(images);
        update(); // Refresh UI
      }
    }
  }


  void removeImage(int index) {
    selectedImages.removeAt(index);
    update();
  }
}