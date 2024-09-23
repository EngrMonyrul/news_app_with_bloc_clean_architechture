import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/data/models/article.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/domain/entities/article_entity.dart';

abstract class ArticleState extends Equatable {
  final List<ArticleEntity>? article;
  final DioException? dioException;

  const ArticleState({this.dioException, this.article});

  @override
  List<Object?> get props => [article, dioException];
}

class ArticleDataLoading extends ArticleState {
  const ArticleDataLoading();
}

class ArticleDataDone extends ArticleState {
  const ArticleDataDone(List<ArticleEntity>? article) : super(article: article);
}

class ArticleDataError extends ArticleState {
  const ArticleDataError(DioException? exception)
      : super(dioException: exception);
}
