import 'package:get/get.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class SnapGramController extends GetxController {
  final storyController = StoryController();
  List<StoryItem> listOfStory = Get.arguments['story'];
  void snapGramComplete() {
    Get.back();
  }
}
