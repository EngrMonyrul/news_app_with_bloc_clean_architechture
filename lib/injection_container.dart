import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/data/data_sources/remote/news_api_services.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/data/repositories/article_repo_impl.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/domain/repositories/article_repo.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/domain/use_cases/article_use_case.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/presentation/bloc/remote/article_bloc.dart';

final sl = GetIt.instance;

Future<void> initSL() async {
  sl.registerSingleton<Dio>(Dio());

  sl.registerSingleton(NewsApiServices(sl()));

  sl.registerSingleton<ArticleRepo>(ArticleRepoImpl(sl()));

  sl.registerSingleton<ArticleUseCase>(ArticleUseCase(sl()));

  sl.registerFactory(() => ArticleBloc(sl()));
}
