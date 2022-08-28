import 'dart:convert';

import 'package:flutter_news_app/data/news_model.dart';
import 'package:flutter_news_app/network/service_factory.dart';
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
    var products = await RemoteServices.fetchProducts();
    if (products != null) {
      articles.value = products;
    }
  } finally {
    isLoading(false);
  }
}
}



