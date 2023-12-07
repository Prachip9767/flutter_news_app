import 'package:flutter/material.dart';
import 'package:flutter_news_app/news_home_page/main_page.dart';

import '../news_description_page/news_description_view.dart';


class NewsPages {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NewsRoutesPaths.newsHome:
        return MaterialPageRoute(builder: (_) => HomePage());
      case NewsRoutesPaths.newsDescription:
        return MaterialPageRoute(
          builder: (_) => NewsDescriptionView(),
          settings: settings,
        );
      default:
        return null;
    }
  }
}

abstract class NewsRoutesPaths {
  static const newsHome = '/';
  static const newsDescription = '/newsDescription';
}
