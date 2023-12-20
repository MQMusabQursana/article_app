import 'package:article_app/features/articles/domain/entities/article_entity.dart';
import 'package:article_app/features/articles/domain/repository/article_repository.dart';
import 'package:article_app/features/core/resources/data_state.dart';
import 'package:article_app/features/core/usecases/usecase.dart';

class GetMostViewedArticlesUsecase implements Usecase<DataState<List<ArticleEntity>>, String> {
  final ArticleRepository repository;

  GetMostViewedArticlesUsecase(this.repository);

  @override
  Future<DataState<List<ArticleEntity>>> call({String? params}) {
    return repository.getMostViewedArticles(params ?? "7");
  }
}
