import 'package:article_app/features/articles/domain/entities/article_entity.dart';
import 'package:article_app/features/articles/domain/usecases/get_most_viewed_articles_usecase.dart';
import 'package:article_app/features/core/resources/data_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/article_test_helper.mocks.dart';

void main() async {
  ///Use The Moc Repository
  late MockArticleRepository mockArticleRepository;
  late GetMostViewedArticlesUsecase getMostViewedArticles;

  //setUp Is Place That allow us to init our vars
  setUp(() {
    mockArticleRepository = MockArticleRepository();
    getMostViewedArticles = GetMostViewedArticlesUsecase(mockArticleRepository);
  });

  List<ArticleEntity> expectList = [
    ArticleEntity(id: 1),
    ArticleEntity(id: 2),
    ArticleEntity(id: 3),
  ];

  DioException exception = DioException(
      requestOptions: RequestOptions(),
      type: DioExceptionType.connectionError,
      response: Response(requestOptions: RequestOptions()),
      error: "Error",
      message: "Error Message");
  //test allow as to test our code

  test('should get failed res from repo', () async {
    //arrange
    when(mockArticleRepository.getMostViewedArticles("7"))
        .thenAnswer((realInvocation) async => DataFailed(exception));
    //act
    final finalResult = await getMostViewedArticles();
    //assert
    expect(finalResult.error, exception);
  });

  test('should get success res from repo', () async {
    //arrange
    when(mockArticleRepository.getMostViewedArticles("7"))
        .thenAnswer((realInvocation) async => DataSuccess(expectList));
    //act
    final finalResult = await getMostViewedArticles();
    //assert
    expect(finalResult.data, expectList);
  });
}
