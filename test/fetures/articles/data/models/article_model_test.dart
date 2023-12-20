import 'dart:convert';

import 'package:article_app/features/articles/data/models/article_model.dart';
import 'package:article_app/features/articles/domain/entities/article_entity.dart';
import 'package:article_app/features/articles/domain/usecases/get_most_viewed_articles_usecase.dart';
import 'package:article_app/features/core/resources/data_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/json_reader.dart';

void main() async {
  const ArticleModel articleModel = ArticleModel(id: 100000009227703, assetId: 100000009227703);

  test('should articleModel as subclass of ArticleEntity', () async {
    //assert
    expect(articleModel, isA<ArticleEntity>());
  });

  test('should return a valid of model from json', () async {
    //arrange
    final Map<String, dynamic> jsonMap =
        jsonDecode(readJsonFromDummyDataDir("most_viewd_article_dummy_data.json"));
    //act
    final result = ArticleModel.fromJson(jsonMap);
    //assert
    expect(articleModel.id, result.id);
  });

  test('should articleModel as subclass of ArticleEntity', () async {
    //assert
    expect(articleModel, isA<ArticleEntity>());
  });
}
