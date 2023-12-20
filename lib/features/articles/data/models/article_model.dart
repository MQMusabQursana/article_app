import 'package:article_app/features/articles/data/models/media_metadata_model.dart';
import 'package:article_app/features/articles/data/models/media_model.dart';
import 'package:article_app/features/articles/domain/entities/article_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_model.freezed.dart';
part 'article_model.g.dart';

@freezed
class ArticleModel extends ArticleEntity with _$ArticleModel {
  const factory ArticleModel({
    @JsonKey(name: 'uri') String? uri,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'asset_id') int? assetId,
    @JsonKey(name: 'source') String? source,
    @JsonKey(name: 'published_date') String? publishedDate,
    @JsonKey(name: 'updated') String? updated,
    @JsonKey(name: 'section') String? section,
    @JsonKey(name: 'subsection') String? subsection,
    @JsonKey(name: 'nytdsection') String? nytdsection,
    @JsonKey(name: 'adx_keywords') String? adxKeywords,
    @JsonKey(name: 'byline') String? byline,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'abstract') String? abstract,
    @JsonKey(name: 'des_facet') List<String>? desFacet,
    @JsonKey(name: 'org_facet') List<String>? orgFacet,
    @JsonKey(name: 'per_facet') List<String>? perFacet,
    @JsonKey(name: 'geo_facet') List<String>? geoFacet,
    @JsonKey(
      name: 'media',
    )
    List<MediaModel>? media,
    @JsonKey(name: 'etaId', includeToJson: false) int? etaId,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) => _ArticleModel.fromJson(json);
}
