import 'package:article_app/features/articles/data/models/article_model.dart';
import 'package:article_app/features/articles/domain/usecases/get_most_viewed_articles_usecase.dart';
import 'package:article_app/features/articles/presentation/providers/remote/article_usecases_provider.dart';
import 'package:article_app/features/core/utils/debugging_utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isGettingMostViewedArticlesListProvider = StateProvider<bool>((ref) => false);

final mostViewedArticlesListProvider =
    StateNotifierProvider<MostViewedArticlesListNotifier, List<ArticleModel>>((ref) {
  final getMostViewedArticlesList = ref.read(getMostViewedArticlesListProvider);
  final isGettingMostViewedArticlesList =
      ref.read(isGettingMostViewedArticlesListProvider.notifier);
  return MostViewedArticlesListNotifier(getMostViewedArticlesList, isGettingMostViewedArticlesList);
});

class MostViewedArticlesListNotifier extends StateNotifier<List<ArticleModel>> {
  final GetMostViewedArticlesUsecase _getMostViewedArticlesListProvider;
  final StateController<bool> _isGettingMostViewedArticlesList;
  MostViewedArticlesListNotifier(
      this._getMostViewedArticlesListProvider, this._isGettingMostViewedArticlesList)
      : super([]);

  getPeriod(String period) async {
    printLog("Getting period $period  . . . ");
    _isGettingMostViewedArticlesList.state = true;
    final result = await _getMostViewedArticlesListProvider.call(params: period);
    if (result.error != null) {
      printLog("Error: ${result.error!.message}");
      state = [];
    } else {
      printLog("Done ${result.data}");
      state = (result.data ?? []) as List<ArticleModel>;
    }
    _isGettingMostViewedArticlesList.state = false;
    printLog("end ___!");
  }
}
