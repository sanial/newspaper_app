import 'dart:convert';
import 'package:dio/dio.dart';
//import 'package:newspaper_app/models/NewsResponse.dart';
import 'package:newspaper_app/models/news_response/news_response.dart';
import 'package:newspaper_app/models/news_response/article.dart';
import 'package:newspaper_app/models/news_response/source.dart';

class NewsApiServices {
  static String _apiKey = "de286e1b6cad442eb0f8c9ac940a48c5";
  static String _url =
      "https://newsapi.org/v2/everything?q=tesla&from=2022-11-09&sortBy=publishedAt&apiKey=$_apiKey";
  static Dio? _dio;

  NewsApiServices() {
    _dio = Dio();
  }
  Future<List<Article>?> fetchNewsArticle() async {
    try {
      Response response = await _dio!.get(_url);
      NewsResponse newsResponse = NewsResponse.fromJson(response.data);
      return newsResponse.articles;
    } on DioError catch (e) {
      print(e);
      throw Exception(e);
    }
  }
}
