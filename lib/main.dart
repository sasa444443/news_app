import 'package:flutter/material.dart';
import 'package:news_app/screens/Home_page.dart';
import 'package:dio/dio.dart';
import 'package:news_app/services/Class_newservices.dart';

void main() {
  runApp(News_app());
}

class News_app extends StatelessWidget {
  const News_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
