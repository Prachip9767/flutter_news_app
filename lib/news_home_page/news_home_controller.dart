import 'dart:convert';

import 'package:flutter_news_app/data/news_model.dart';
import 'package:flutter_news_app/network/service_factory.dart';
import 'package:flutter_news_app/routes_and_pages/routs_pages.dart';
import 'package:get/get.dart';

class NewsHomeController extends GetxController {

  var isLoading = true.obs;
  var articles = <Articles>[].obs;

  @override
  void onInit() async {
    getData();
  }
getData() async {
  try {
    isLoading(true);
    var newsList = await RemoteServices.fetchNewsList();
    if (newsList != null) {
      articles.value = newsList;
    }
  } finally {
    isLoading(false);
  }
}
onTap(int index){
    Articles articless=articles[index];
  // QuizEventModel quizEventModel = upcomingEvents[listIndex];
  Get.toNamed(NewsRoutesPaths.newsDescription, arguments: articless);
}
}



