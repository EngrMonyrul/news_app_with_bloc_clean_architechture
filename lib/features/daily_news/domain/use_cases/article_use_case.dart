import 'package:news_app_with_bloc_clean_architechture/core/resources/data_state.dart';
import 'package:news_app_with_bloc_clean_architechture/core/usecases/use_case.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/data/models/article.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/data/repositories/article_repo_impl.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/domain/entities/article_entity.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/domain/repositories/article_repo.dart';

class ArticleUseCase implements UseCase<DataState<List<ArticleEntity>>, void> {
  const ArticleUseCase(this._articleRepo);

  final ArticleRepo _articleRepo;

  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepo.getArticles();
  }
}
