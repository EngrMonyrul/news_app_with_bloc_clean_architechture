import 'dart:io';
import 'package:dio/dio.dart';
import 'package:news_app_with_bloc_clean_architechture/core/constants/constants.dart';
import 'package:news_app_with_bloc_clean_architechture/core/resources/data_state.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/data/data_sources/remote/news_api_services.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/data/models/article.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/domain/entities/article_entity.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/domain/repositories/article_repo.dart';

class ArticleRepoImpl implements ArticleRepo {
  const ArticleRepoImpl(this._newsApiServices);

  final NewsApiServices _newsApiServices;

  @override
  Future<DataState<List<Article>>> getArticles() async {
    try {
      final httpResponse = await _newsApiServices.getTopHeadlines(
        apiKey,
        country,
        category,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataError(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e) {
      return DataError(e);
    }
  }
}
