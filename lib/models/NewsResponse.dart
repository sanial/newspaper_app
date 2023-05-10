// class NewsResponse {
//   NewsResponse({
//     this.status,
//     this.totalResults,
//     this.articles,
//   });

//   String? status;
//   int? totalResults;
//   late final List<Article> articles;

//   factory NewsResponse.fromJson(Map<String, dynamic> json) => NewsResponse(
//         status: json["status"],
//         totalResults: json["totalResults"],
//         articles: List<Article>.from(
//             json["articles"].map((x) => Article.fromJson(x))),
//       );
// }

// class Article {
//   Article({
//     this.source,
//     this.author,
//     this.title,
//     this.description,
//     this.url,
//     this.urlToImage,
//     this.publishedAt,
//     this.content,
//   });

//   Source? source;
//   String? author;
//   String? title;
//   String? description;
//   String? url;
//   String? urlToImage;
//   String? publishedAt;
//   String? content;

//   factory Article.fromJson(Map<String, dynamic> json) => Article(
//         source: Source.fromJson(json["source"]),
//         author:
//             json["author"] as String == null ? null : json["author"] as String,
//         title: json["title"] as String,
//         description: json["description"] as String,
//         url: json["url"] as String,
//         urlToImage:
//             json["urlToImage"] as String == null ? null : json["urlToImage"],
//         publishedAt: json["publishedAt"] as String,
//         content: json["content"] as String,
//       );
// }

// class Source {
//   Source({
//     this.id,
//     this.name,
//   });

//   String? id;
//   String? name;

//   factory Source.fromJson(Map<String, dynamic> json) => Source(
//         id: json["id"] == null ? null : json["id"],
//         name: json["name"] as String,
//       );
// }
