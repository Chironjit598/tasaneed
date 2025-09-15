import 'package:get/get.dart';
import 'package:tasaned_project/utils/constants/app_images.dart';

class CategoryController extends GetxController {
  // Simple data model: list of maps with title and image
  final List<Map<String, String>> categories = [
    {"title": "Abstract", "image": AppImages.category},
    {"title": "Expressionism", "image": AppImages.category},
    {"title": "Surrealism", "image": AppImages.category},
    {"title": "Minimalism", "image": AppImages.category},
    {"title": "Psychedelic Art", "image": AppImages.category},
    {"title": "Symbolic Art", "image": AppImages.category},
    {"title": "Visionary Art", "image": AppImages.category},
    {"title": "Gestural Art", "image": AppImages.category},
  ];
}
