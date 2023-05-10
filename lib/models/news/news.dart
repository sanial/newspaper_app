import 'dart:convert';

import 'package:collection/collection.dart';

import 'article.dart';

//@immutable
class News {
  final int? totalArticles;
  final List<Article>? articles;

  const News({this.totalArticles, this.articles});

  @override
  String toString() {
    return 'News(totalArticles: $totalArticles, articles: $articles)';
  }

  factory News.fromMap(Map<String, dynamic> data) => News(
        totalArticles: data['totalArticles'] as int?,
        articles: (data['articles'] as List<dynamic>?)
            ?.map((e) => Article.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'totalArticles': totalArticles,
        'articles': articles?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [News].
  factory News.fromJson(String data) {
    return News.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [News] to a JSON string.
  String toJson() => json.encode(toMap());

  News copyWith({
    int? totalArticles,
    List<Article>? articles,
  }) {
    return News(
      totalArticles: totalArticles ?? this.totalArticles,
      articles: articles ?? this.articles,
    );
  }
}
