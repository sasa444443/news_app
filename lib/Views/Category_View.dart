import 'package:flutter/material.dart';
import 'package:news_app/widget/NewsListView.dart';
import 'package:news_app/widget/NewsListViewBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 4,
        title: Text(category.toUpperCase()),
      ),
      body: CustomScrollView(
        slivers: [NewsListViewBuilder(Category: category)],
      ),
    );
  }
}
