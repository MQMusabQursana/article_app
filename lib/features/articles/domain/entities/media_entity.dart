import 'media_metadata_entity.dart';

class MediaEntity {
  final String? type;
  final String? subtype;
  final String? caption;
  final String? copyright;
  final int? approvedForSyndication;
  final List<MediaMetadataEntity>? mediaMetadata;

  const MediaEntity(
      {this.type,
      this.subtype,
      this.caption,
      this.copyright,
      this.approvedForSyndication,
      this.mediaMetadata});
}
