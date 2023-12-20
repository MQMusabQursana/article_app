import 'package:article_app/features/articles/domain/entities/media_metadata_entity.dart';

import 'media_entity.dart';

class ArticleEntity {
  final String? uri;
  final String? url;
  final int? id;
  final int? assetId;
  final String? source;
  final String? publishedDate;
  final String? updated;
  final String? section;
  final String? subsection;
  final String? nytdsection;
  final String? adxKeywords;
  final String? byline;
  final String? type;
  final String? title;
  final String? abstract;
  final List<String>? desFacet;
  final List<String>? orgFacet;
  final List<String>? perFacet;
  final List<String>? geoFacet;
  final List<MediaEntity>? media;
  final int? etaId;

  const ArticleEntity(
      {this.uri,
      this.url,
      this.id,
      this.assetId,
      this.source,
      this.publishedDate,
      this.updated,
      this.section,
      this.subsection,
      this.nytdsection,
      this.adxKeywords,
      this.byline,
      this.type,
      this.title,
      this.abstract,
      this.desFacet,
      this.orgFacet,
      this.perFacet,
      this.geoFacet,
      this.media,
      this.etaId});
}
