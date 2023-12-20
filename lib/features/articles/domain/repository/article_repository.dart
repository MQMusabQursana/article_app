import 'package:article_app/features/articles/data/models/article_model.dart';
import 'package:article_app/features/articles/domain/entities/article_entity.dart';
import 'package:article_app/features/core/resources/data_state.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getMostViewedArticles(String period);
}
