import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CatigoryView extends StatelessWidget {
  const CatigoryView({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              NewsListViewBuilder(
                category: category,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
