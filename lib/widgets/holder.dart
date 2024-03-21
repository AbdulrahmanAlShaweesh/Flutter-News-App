// import 'package:flutter/material.dart';
// import 'package:news_app/Models/article_model.dart';
// import 'package:news_app/Services/news_services.dart';
// import '../widgets/news_tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> article = [];
//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     article = await NewsServices().getNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()),
//           )
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: article.length,
//               (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                   child: NewsTile(
//                     articles: article[index],
//                   ),
//                 );
//               },
//             ),
//           );
//   }
// }
