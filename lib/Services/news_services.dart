import 'package:dio/dio.dart';
import 'package:news_app/Models/article_model.dart';

class NewsServices {
  final dio = Dio();
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      final response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=8fd69c3bfc9e4cfc9733a03b46298ca6&category=$category");
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        articlesList.add(
          ArticleModel.fromJson(article),
        );
      }

      return articlesList;
    } on Exception catch (e) {
      return [];
    }
  }
}
