import 'package:get/instance_manager.dart';

import 'news_description_controller.dart';

class NewsDescriptionBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<NewsDescriptionController>(() => NewsDescriptionController());
  }

}