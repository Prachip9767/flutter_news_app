import 'package:flutter/material.dart';
import 'package:flutter_news_app/news_home_page/main_page.dart';
import 'package:get/get.dart';

import 'routes_and_pages/routs_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX news app',
      theme: ThemeData(),
      getPages: NewsPages.routes,
      initialRoute: NewsPages.initial,
    );
  }
}
