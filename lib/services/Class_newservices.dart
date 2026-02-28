import 'package:dio/dio.dart';
import 'package:news_app/models/Article_models.dart';

class Newservices {
  final Dio dio;
  Newservices(this.dio);
  Future<List<ArticleModels>> TopGetHeadlines({
    required String Category,
  }) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=6285fcec84f3487a98c1e79b013468c1&category=$Category',
      );
      Map<String, dynamic> JsonData = response.data;
      List<dynamic> articles = JsonData["articles"];
      List<ArticleModels> articlelist = [];
      for (var article in articles) {
        ArticleModels articleModels = ArticleModels.fromJson(article);
        articlelist.add(articleModels);
      }
      return articlelist;
    } catch (e) {
      return [];
    }
  }
}
