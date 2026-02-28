import 'package:flutter/foundation.dart';

class ArticleModels {
  final String? image;
  final String title;
  final String? subtitle;

  ArticleModels({
    required this.image,
    required this.title,
    required this.subtitle,
    
  });
  factory ArticleModels.fromJson(json){
    return ArticleModels(
          image: json["urlToImage"],
          title: json["title"],
          subtitle: json ["description"],
        );
   } 
   
}
