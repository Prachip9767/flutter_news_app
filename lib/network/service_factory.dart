import 'package:flutter_news_app/data/news_model.dart';
import 'package:http/http.dart' as http;

class RemoteServices{
  static var client = http.Client();

  static Future<List<Articles>> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://run.mocky.io/v3/ed06c213-2c96-40ac-a813-7ff13631fc5a'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return articlesFromJson(jsonString);
    } else {
      //show error message
      return [];
    }
  }

}
