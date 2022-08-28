import 'dart:convert';

List<Articles> articlesFromJson(String str) => List<Articles>.from(json.decode(str).map((x) => Articles.fromJson(x)));

String articlesToJson(List<Articles> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Articles {
  Articles({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  factory Articles.fromJson(Map<String, dynamic> json) => Articles(
    author: json["author"] == null ? '' : json["author"],
    title: json["title"]??'',
    description: json["description"] == null ? '' : json["description"],
    url: json["url"]??'',
    urlToImage: json["urlToImage"] == null ? '' : json["urlToImage"],
    publishedAt: json["publishedAt"] == null ?'':json["publishedAt"],
    // publishedAt: DateTime.parse(json["publishedAt"]),
    content: json["content"] == null ? '' : json["content"],
  );

  Map<String, dynamic> toJson() => {
    "author": author == null ? '': author,
    "title": title,
    "description": description == null ?'': description,
    "url": url,
    "urlToImage": urlToImage == null ? '' : urlToImage,
    "publishedAt": publishedAt==null?'':publishedAt,
    "content": content == null ? '' : content,
  };
}


