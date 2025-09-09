import 'package:get/get.dart';

class ChooseRoleController extends GetxController {
  // 0: General User/Collector, 1: Artist/Curator, 2: Museum/Edu
  RxInt selectedIndex = 0.obs;

  void select(int index) {
    selectedIndex.value = index;
    update();
  }

  String get selectedRoleKey {
    switch (selectedIndex.value) {
      case 1:
        return 'artist_curator';
      case 2:
        return 'museum_edu';
      case 0:
      default:
        return 'general_user_collector';
    }
  }
}
