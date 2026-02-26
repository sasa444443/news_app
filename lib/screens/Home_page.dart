import 'package:flutter/material.dart';
import 'package:news_app/Components/Task1_ScrollHorizontal.dart';
import 'package:news_app/widget/NewsListViewBuilder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News', style: TextStyle(color: Colors.black)),
            Text('Cloud', style: TextStyle(color: Colors.yellow)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: Task1Scrollhorizontal()),
            SliverToBoxAdapter(child: SizedBox(height: 22)),
            NewsListViewBuilder(Category: "general"),
          ],
        ),

        // child: Column(
        // children: [
        // Task1Scrollhorizontal(),
        // SizedBox(height: 32),
        // Expanded(child: NewsLIstView()),
        // ],
        //  ),
      ),
    );
  }
}
