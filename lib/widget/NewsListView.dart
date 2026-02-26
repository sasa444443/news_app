import 'package:flutter/material.dart';
import 'package:news_app/models/Article_models.dart';
import 'package:news_app/widget/NewsTIle.dart';

class NewsLIstView extends StatelessWidget {
  List<ArticleModels> articles;

  NewsLIstView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Newstile(articleModel: articles[index]),
        ),
      ),
    );
  }
}
