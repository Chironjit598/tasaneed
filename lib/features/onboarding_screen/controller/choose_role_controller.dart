import 'package:get/get.dart';

class ChooseRoleController extends GetxController {
  // 0: Visitor, 1: Artist, 2: Collector, 3: Curator, 4: Museum, 5: Educational Institution
  RxInt selectedIndex = 0.obs;

  void select(int index) {
    selectedIndex.value = index;
    update();
  }

  String get selectedRoleKey {
    switch (selectedIndex.value) {
      case 0:
        return 'visitor';
      case 1:
        return 'artist';
      case 2:
        return 'collector';
      case 3:
        return 'curator';
      case 4:
        return 'museum';
      case 5:
        return 'educational_institution';
      default:
        return 'visitor';
    }
  }
}
