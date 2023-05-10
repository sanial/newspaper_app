import 'dart:convert';

import 'package:collection/collection.dart';

//@immutable
class Source {
  final String? name;
  final String? url;

  const Source({this.name, this.url});

  @override
  String toString() => 'Source(name: $name, url: $url)';

  factory Source.fromMap(Map<String, dynamic> data) => Source(
        name: data['name'] as String?,
        url: data['url'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'url': url,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Source].
  factory Source.fromJson(String data) {
    return Source.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Source] to a JSON string.
  String toJson() => json.encode(toMap());

  Source copyWith({
    String? name,
    String? url,
  }) {
    return Source(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }
}
