import 'package:article_app/features/articles/domain/usecases/get_most_viewed_articles_usecase.dart';
import 'package:article_app/injection_container.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getMostViewedArticlesListProvider = Provider<GetMostViewedArticlesUsecase>((ref) => sl());
