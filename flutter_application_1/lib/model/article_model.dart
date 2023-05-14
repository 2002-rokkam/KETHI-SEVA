import 'package:flutter_application_1/model/source_model.dart';


class ArticleModel {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publisedAt;
  String content;

  ArticleModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publisedAt,
    required this.content,
    required this.source,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
        source: Source.fromJson(json['source']),
        author: json['author'] as String,
        title: json['title'] as String,
        description: json['description'] as String,
        url: json['url'] as String,
        urlToImage: json['urlToImage'] as String,
        publisedAt: json['publishedAt'],
        content: json['content'] as String);
  }
}
