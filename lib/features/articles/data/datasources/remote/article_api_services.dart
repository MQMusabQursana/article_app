import 'package:article_app/features/core/constants/constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'article_api_services.g.dart';

// using retrofit to generate code  for our apis functions

@RestApi(baseUrl: ARTICLE_API_BASE_URL)
abstract class ArticleApiServices {
  factory ArticleApiServices(Dio dio) = _ArticleApiServices;

  @GET('/mostviewed/{section}/{period}.json')
  Future<HttpResponse> getMostViewedArticles(@Path('section') String section,
      @Path('period') String period, @Query('api-key') String apiKey);
}
