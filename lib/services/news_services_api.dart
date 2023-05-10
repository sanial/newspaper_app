import 'dart:convert';
import 'package:dio/dio.dart';
//import 'package:newspaper_app/models/NewsResponse.dart';
// import 'package:newspaper_app/models/news_response/news_response.dart';
// import 'package:newspaper_app/models/news_response/article.dart';
// import 'package:newspaper_app/models/news_response/source.dart';
import 'package:newspaper_app/models/news/article.dart';
import 'package:newspaper_app/models/news/news.dart';
import 'package:newspaper_app/models/news/source.dart';

class NewsApiServices {
  static String _apiKey = "0736740fbeb37da3cf0f00895d4b7b37";
  static String _url =
      "https://gnews.io/api/v4/top-headlines?country=pk&category=general&apikey=$_apiKey";
  static Dio? _dio;

  NewsApiServices() {
    _dio = Dio();
  }
  Future<List<Article>> fetchNewsArticle() async {
    try {
      Response response = await _dio!.get(_url);
      News news = News.fromJson(response.data);
      return news.articles;
    } on DioError catch (e) {
      print(e);
      throw Exception(e);
    }
  }
}
