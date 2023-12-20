import 'dart:io';

import 'package:article_app/features/articles/data/datasources/remote/article_api_services.dart';
import 'package:article_app/features/articles/data/models/article_model.dart';
import 'package:article_app/features/articles/domain/repository/article_repository.dart';
import 'package:article_app/features/core/constants/constants.dart';
import 'package:article_app/features/core/resources/data_state.dart';
import 'package:article_app/features/core/utils/logger_utils.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleApiServices _articleApiServices;

  ArticleRepositoryImpl(this._articleApiServices);

  @override
  Future<DataState<List<ArticleModel>>> getMostViewedArticles(String period) async {
    try {
      printLog(period);
      final res = await _articleApiServices.getMostViewedArticles(ALL_SECTION, period, NY_API_KEY);
      if (res.response.statusCode == HttpStatus.ok) {
        List<dynamic> results = res.data['results'] ?? [];
        final finalResult = results.map<ArticleModel>((e) => ArticleModel.fromJson(e)).toList();
        return DataSuccess(finalResult);
      } else {
        return DataFailed(DioException(
            error: res.response.statusMessage,
            response: res.response,
            type: DioExceptionType.connectionError,
            requestOptions: res.response.requestOptions));
      }
    } on DioException catch (ex) {
      return DataFailed(ex);
    }
  }
}
