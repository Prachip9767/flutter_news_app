import 'package:flutter_news_app/news_description_page/news_description_bindings.dart';
import 'package:flutter_news_app/news_description_page/news_description_view.dart';
import 'package:flutter_news_app/news_home_page/main_page.dart';
import 'package:flutter_news_app/news_home_page/news_Bindings.dart';
import 'package:get/get.dart';

class NewsPages{
  NewsPages._();

  static const initial = NewsRoutes.newsHome;

  static final routes = <GetPage>[
    GetPage(
        name: NewsRoutesPaths.newsHome,
        page: () =>HomePage(),
        binding:NewsBindings()
    ),
    GetPage(
        name: NewsRoutesPaths.newsDescription,
        page: () =>NewsDescriptionView(),
        binding: NewsDescriptionBindings()),
  ];
}

abstract class NewsRoutes {
  NewsRoutes._();
  static const newsHome = NewsRoutesPaths.newsHome;
}

abstract class NewsRoutesPaths {
  static const newsHome = '/';
  static const newsDescription = '/newsDescription';


}