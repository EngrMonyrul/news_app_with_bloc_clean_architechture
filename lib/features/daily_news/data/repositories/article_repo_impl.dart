import 'package:news_app_with_bloc_clean_architechture/core/resources/data_state.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/data/models/article.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/domain/entities/article_entity.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/domain/repositories/article_repo.dart';

class ArticleRepoImpl implements ArticleRepo {
  @override
  Future<DataState<List<Article>>> getArticles() {
    // TODO: implement getArticles
    throw UnimplementedError();
  }
}
