import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/Article_models.dart';
import 'package:news_app/services/Class_newservices.dart';
import 'package:news_app/widget/NewsListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.Category});
  final String Category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

// cached network image
class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = Newservices(Dio()).TopGetHeadlines(Category: widget.Category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModels>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsLIstView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverFillRemaining(
            child: Text("opps there was an error, try later"),
          );
        } else {
          return SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
