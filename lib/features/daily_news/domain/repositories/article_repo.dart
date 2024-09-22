import 'package:news_app_with_bloc_clean_architechture/core/resources/data_state.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/domain/entities/article_entity.dart';

abstract class ArticleRepo {
  Future<DataState<List<ArticleEntity>>> getArticles();
}
