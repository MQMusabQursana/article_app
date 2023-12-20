import 'package:article_app/features/articles/data/models/media_metadata_model.dart';
import 'package:article_app/features/articles/domain/entities/media_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_model.freezed.dart';
part 'media_model.g.dart';

@freezed
class MediaModel extends MediaEntity with _$MediaModel {
  const factory MediaModel(
      {@JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'subtype') final String? subtype,
      @JsonKey(name: 'caption') final String? caption,
      @JsonKey(name: 'copyright') final String? copyright,
      @JsonKey(name: 'approved_for_syndication') final int? approvedForSyndication,
      @JsonKey(
        name: 'media-metadata',
      )
      List<MediaMetadataModel>? mediaMetadata}) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) => _MediaModel.fromJson(json);
}
