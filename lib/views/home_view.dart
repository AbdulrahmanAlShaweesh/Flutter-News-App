import 'package:flutter/material.dart';
import 'package:news_app/Widgets/catigories_list_view.dart';
import 'package:news_app/widgets/custom_home_view_app_bar.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const HomeViewAppBar(),
      ),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: CatigoriesListView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 25.0,
            ),
          ),
          NewsListViewBuilder(
            category: 'general',
          )
        ],
      ),
    );
  }
}
