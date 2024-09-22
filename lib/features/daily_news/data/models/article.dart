import 'package:news_app_with_bloc_clean_architechture/features/daily_news/domain/entities/article_entity.dart';

class Article extends ArticleEntity {
  const Article({
    int? id,
    String? title,
    String? description,
    String? author,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  });

  factory Article.fromJson(Map<String, dynamic> data) => Article(
        id: data["id"],
        title: data["title"],
        description: data["description"],
        author: data["author"],
        url: data["url"],
        urlToImage: data["urlToImage"],
        publishedAt: data["publishedAt"],
        content: data["content"],
      );
}
