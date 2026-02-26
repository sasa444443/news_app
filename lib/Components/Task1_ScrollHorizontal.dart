import 'package:flutter/material.dart';
import 'package:news_app/models/Category_model.dart';
import 'package:news_app/widget/CategoryCard.dart';

class Task1Scrollhorizontal extends StatelessWidget {
  Task1Scrollhorizontal({super.key});
  List<Category_Models> categories = [
    Category_Models(Category_name: "Business", image: 'assets/Business.jpg'),
    Category_Models(
      Category_name: 'entertainment',
      image: 'assets/Entertaiment.jpg',
    ),
    Category_Models(Category_name: 'General', image: 'assets/General.jpg'),
    Category_Models(Category_name: 'Health', image: 'assets/Health.jpg'),
    Category_Models(Category_name: 'Science', image: 'assets/Science.jpg'),
    Category_Models(Category_name: 'Sports', image: 'assets/Sports.jpg'),
    Category_Models(
      Category_name: 'Technology',
      image: 'assets/technology.jpeg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
