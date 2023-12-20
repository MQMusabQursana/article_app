import 'package:article_app/features/articles/data/datasources/remote/article_api_services.dart';
import 'package:article_app/features/articles/data/repository/article_repository_impl.dart';
import 'package:article_app/features/articles/domain/repository/article_repository.dart';
import 'package:article_app/features/articles/domain/usecases/get_most_viewed_articles_usecase.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

///initializeDependency code using Get it

final sl = GetIt.instance;

Future<void> initializeDependency() async {
  ///Dio
  sl.registerSingleton<Dio>(Dio());

  ///Dependencies
  sl.registerSingleton<ArticleApiServices>(ArticleApiServices(sl()));
  sl.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(sl()));

  ///Usecases
  sl.registerSingleton<GetMostViewedArticlesUsecase>(GetMostViewedArticlesUsecase(sl()));
}
