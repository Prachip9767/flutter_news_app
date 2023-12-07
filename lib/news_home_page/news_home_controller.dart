import 'package:flutter/material.dart';
import 'package:flutter_news_app/data/news_model.dart';
import 'package:flutter_news_app/network/service_factory.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../routes_and_pages/routs_pages.dart';

class NewsController extends ChangeNotifier {
  List<Articles> articles = [];
  bool isLoading = true;

  Future<void> getData() async {
    try {
      isLoading = true;
      notifyListeners();

      var newsList = await RemoteServices.fetchNewsList();
      if (newsList != null) {
        articles = newsList;
      }
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
  onTap(int index){
    Articles articless=articles[index];
    Get.toNamed(NewsRoutesPaths.newsDescription, arguments: articless);
  }
}
