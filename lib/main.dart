import 'package:flutter/material.dart';
import 'package:flutter_news_app/news_home_page/main_page.dart';
import 'package:flutter_news_app/news_home_page/news_home_controller.dart';
import 'package:flutter_news_app/news_description_page/news_description_view.dart';
import 'package:flutter_news_app/news_description_page/news_description_controller.dart';
import 'package:flutter_news_app/routes_and_pages/routs_pages.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewsController()),
        ChangeNotifierProvider(create: (_) => NewsDescriptionController()),
        // Add other providers if needed
      ],
      child: MaterialApp(
        title: 'Provider News App',
        theme: ThemeData(), // Add your theme here
        initialRoute: NewsRoutesPaths.newsHome,
        routes: {
          NewsRoutesPaths.newsHome: (_) => HomePage(),
          NewsRoutesPaths.newsDescription: (_) => NewsDescriptionView(),
          // Define other routes as needed
        },
      ),
    );
  }
}
