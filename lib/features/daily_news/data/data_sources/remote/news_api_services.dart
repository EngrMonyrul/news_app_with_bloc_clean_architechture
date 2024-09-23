import 'package:dio/dio.dart';
import 'package:news_app_with_bloc_clean_architechture/features/daily_news/data/models/article.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

part 'news_api_services.g.dart';

@RestApi()
abstract class NewsApiServices {
  factory NewsApiServices(Dio dio) = _NewsApiServices;

  @GET("/top-headlines")
  Future<HttpResponse<List<Article>>> getTopHeadlines(
    @Query("apiKey") String? apiKey,
    @Query("country") String? country,
    @Query("category") String? category,
  );
}
