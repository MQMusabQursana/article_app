import 'package:article_app/features/articles/domain/entities/media_metadata_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_metadata_model.freezed.dart';
part 'media_metadata_model.g.dart';

@freezed
class MediaMetadataModel extends MediaMetadataEntity with _$MediaMetadataModel {
  const factory MediaMetadataModel({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'height') int? height,
    @JsonKey(name: 'width') int? width,
  }) = _MediaMetadataModel;

  factory MediaMetadataModel.fromJson(Map<String, dynamic> json) =>
      _MediaMetadataModel.fromJson(json);
}
