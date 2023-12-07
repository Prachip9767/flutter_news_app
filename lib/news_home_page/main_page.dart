import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app/news_home_page/news_home_controller.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NewsController(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Breaking News'),
          automaticallyImplyLeading: false,
          elevation: 0,
        ),
        body: Consumer<NewsController>(
          builder: (context, controller, _) {
            return controller.isLoading
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
              itemCount: controller.articles.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    controller.onTap(index);
                  },
                  child: NewsList(
                    image: controller.articles[index].urlToImage,
                    title: controller.articles[index].title,
                    author: controller.articles[index].author,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class NewsList extends StatelessWidget {
  final String image;
  final String title;
  final String author;

  NewsList({required this.image, required this.title, required this.author});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                // Image.network(
                //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy1EREy6-pysO2QjdnbiZ-1aUWLdIjPWhuKZ49UvCu&s'),
                CachedNetworkImage(
                    imageUrl: image,
                    fit: BoxFit.cover,
                    memCacheHeight: 48,
                    memCacheWidth: 48,
                    width: 48,
                    height: 48,
                    errorWidget: (context, str, dyn) => Text('url not founs')),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: TextStyle(color: Colors.black),overflow: TextOverflow.ellipsis),
                      SizedBox(
                        height: 4,
                      ),
                      Text(author, style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}

