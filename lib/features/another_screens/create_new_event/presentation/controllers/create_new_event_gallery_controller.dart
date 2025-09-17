import 'package:get/get.dart';
import 'package:tasaned_project/utils/helpers/other_helper.dart';

class CreateNewEventGalleryController extends GetxController {
  final List<String> imagePaths = [];
  String? videoPath;

  int get photosCount => imagePaths.length;
  static const int maxPhotos = 10;

  Future<void> pickImages() async {
    final remaining = maxPhotos - imagePaths.length;
    if (remaining <= 0) return;
    final picked = await OtherHelper.pickMultipleImage(imageLimit: remaining);
    if (picked.isNotEmpty) {
      imagePaths.addAll(picked);
      update();
    }
  }

  void removeImageAt(int index) {
    if (index >= 0 && index < imagePaths.length) {
      imagePaths.removeAt(index);
      update();
    }
  }

  void removeVideo() {
    videoPath = null;
    update();
  }
}
