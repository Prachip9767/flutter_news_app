import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app/news_home_page/news_home_controller.dart';
import 'package:get/get.dart';

class HomePage extends GetView<NewsHomeController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Breaking News',
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.view_list_rounded), onPressed: () {}),
                IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (controller.isLoading.value)
                return Center(child: CircularProgressIndicator());
              else
                return ListView.builder(
                  itemCount: controller.articles.length,
                  itemBuilder: (context, index) {
                    return NewsList(
                        image: controller.articles[index].urlToImage,
                        title: controller.articles[index].title,
                        author: controller.articles[index].author);
                  },
                );
            }),
          )
        ],
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
      padding: const EdgeInsets.all(8.0),
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
                  width: 30,
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
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

