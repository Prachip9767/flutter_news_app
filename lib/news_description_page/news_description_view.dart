import 'package:flutter/material.dart';
import 'package:flutter_news_app/news_description_page/news_description_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class NewsDescriptionView extends GetView<NewsDescriptionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('News Description')) ,
        body: Obx(()=>
     Container(
      color: Colors.white,
            child: Column(
              children: [
                Image.network(controller.singleEvent.value!.urlToImage),
                SizedBox(
                  height: 4,
                ),
                Text(controller.singleEvent.value!.title, style: TextStyle(color: Colors.black)),
                SizedBox(
                  height: 4,
                ),
                Text(controller.singleEvent.value!.author, style: TextStyle(color: Colors.black)),
                SizedBox(
                  height: 4,
                ),
                Text(controller.singleEvent.value!.description, style: TextStyle(color: Colors.black)),
              ],
            ),
    ),
        ));
  }
}
