import 'package:flutter_news_app/news_home_page/news_home_controller.dart';
import 'package:get/instance_manager.dart';

class NewsBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<NewsHomeController>(() => NewsHomeController());

  }

}