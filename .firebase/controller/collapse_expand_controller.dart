import '../utils/library.dart';

class CollapseExpandController extends GetxController {
  var expandedIndex = (-1).obs; // Observable to hold the expanded index (-1 means none expanded)

  void toggleExpansion(int index) {
    if (expandedIndex.value == index) {
      expandedIndex.value = -1; // Collapse if already expanded
    } else {
      expandedIndex.value = index; // Expand new tile
    }
  }
}