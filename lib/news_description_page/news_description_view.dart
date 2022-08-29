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
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(controller.singleEvent.value!.urlToImage),
                  SizedBox(
                    height: 8,
                  ),
                  Text(('Tittle: ${controller.singleEvent.value!.title}'), style: TextStyle(color: Colors.black)),
                  Divider(),
                  SizedBox(
                    height: 8,
                  ),
                  Text(('Author: ${controller.singleEvent.value!.author}'), style: TextStyle(color: Colors.black)),
                  Divider(),
                  SizedBox(
                    height: 8,
                  ),
                  Text(('Description: ${controller.singleEvent.value!.description}'), style: TextStyle(color: Colors.black)),
                  Divider(),
                ],
              ),
            ),
    ),
        ));
  }
}
