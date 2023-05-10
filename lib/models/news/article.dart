import 'dart:convert';

import 'package:collection/collection.dart';

import 'source.dart';

//@immutable
class Article {
  final String? title;
  final String? description;
  final String? content;
  final String? url;
  final String? image;
  final String? publishedAt;
  final Source? source;

  const Article({
    this.title,
    this.description,
    this.content,
    this.url,
    this.image,
    this.publishedAt,
    this.source,
  });

  @override
  String toString() {
    return 'Article(title: $title, description: $description, content: $content, url: $url, image: $image, publishedAt: $publishedAt, source: $source)';
  }

  factory Article.fromMap(Map<String, dynamic> data) => Article(
        title: data['title'] as String?,
        description: data['description'] as String?,
        content: data['content'] as String?,
        url: data['url'] as String?,
        image: data['image'] as String?,
        publishedAt: data['publishedAt'] as String?,
        source: data['source'] == null
            ? null
            : Source.fromMap(data['source'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'title': title,
        'description': description,
        'content': content,
        'url': url,
        'image': image,
        'publishedAt': publishedAt,
        'source': source?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Article].
  factory Article.fromJson(String data) {
    return Article.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Article] to a JSON string.
  String toJson() => json.encode(toMap());

  Article copyWith({
    String? title,
    String? description,
    String? content,
    String? url,
    String? image,
    String? publishedAt,
    Source? source,
  }) {
    return Article(
      title: title ?? this.title,
      description: description ?? this.description,
      content: content ?? this.content,
      url: url ?? this.url,
      image: image ?? this.image,
      publishedAt: publishedAt ?? this.publishedAt,
      source: source ?? this.source,
    );
  }
}
