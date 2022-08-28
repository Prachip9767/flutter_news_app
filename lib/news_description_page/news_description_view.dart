import 'package:flutter/material.dart';
import 'package:flutter_news_app/news_description_page/news_description_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class NewsDescriptionView extends GetView<NewsDescriptionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('News Description')) ,
        body: Container(
      color: Colors.white,
          child: Column(
            children: [
              Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
              SizedBox(
                height: 4,
              ),
              Text('tittle', style: TextStyle(color: Colors.black)),
              SizedBox(
                height: 4,
              ),
              Text('author', style: TextStyle(color: Colors.black)),
              SizedBox(
                height: 4,
              ),
              Text('Description', style: TextStyle(color: Colors.black)),
            ],
          ),
    ));
  }
}
