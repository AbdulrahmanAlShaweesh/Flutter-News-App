import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import '../widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> article;

  const NewsListView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: article.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: NewsTile(
              articles: article[index],
            ),
          );
        },
      ),
    );
  }
}
