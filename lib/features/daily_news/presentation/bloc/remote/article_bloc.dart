import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_with_bloc_clean_architechture/core/resources/data_state.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/domain/use_cases/article_use_case.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/presentation/bloc/remote/article_event.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/presentation/bloc/remote/article_state.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final ArticleUseCase articleUseCase;

  ArticleBloc(this.articleUseCase) : super(const ArticleDataLoading()) {
    on<GetArticles>(onGetArticle);
  }

  Future<void> onGetArticle(
      GetArticles event, Emitter<ArticleState> emit) async {
    final dataState = await articleUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(ArticleDataDone(dataState.data));
    }

    if (dataState is DataError) {
      emit(ArticleDataError(dataState.error));
    }
  }
}
