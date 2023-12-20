// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) {
  return _ArticleModel.fromJson(json);
}

/// @nodoc
mixin _$ArticleModel {
  @JsonKey(name: 'uri')
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_id')
  int? get assetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'source')
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_date')
  String? get publishedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated')
  String? get updated => throw _privateConstructorUsedError;
  @JsonKey(name: 'section')
  String? get section => throw _privateConstructorUsedError;
  @JsonKey(name: 'subsection')
  String? get subsection => throw _privateConstructorUsedError;
  @JsonKey(name: 'nytdsection')
  String? get nytdsection => throw _privateConstructorUsedError;
  @JsonKey(name: 'adx_keywords')
  String? get adxKeywords => throw _privateConstructorUsedError;
  @JsonKey(name: 'byline')
  String? get byline => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'abstract')
  String? get abstract => throw _privateConstructorUsedError;
  @JsonKey(name: 'des_facet')
  List<String>? get desFacet => throw _privateConstructorUsedError;
  @JsonKey(name: 'org_facet')
  List<String>? get orgFacet => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_facet')
  List<String>? get perFacet => throw _privateConstructorUsedError;
  @JsonKey(name: 'geo_facet')
  List<String>? get geoFacet => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  List<MediaModel>? get media => throw _privateConstructorUsedError;
  @JsonKey(name: 'eta_id')
  int? get etaId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleModelCopyWith<ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleModelCopyWith<$Res> {
  factory $ArticleModelCopyWith(
          ArticleModel value, $Res Function(ArticleModel) then) =
      _$ArticleModelCopyWithImpl<$Res, ArticleModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uri') String? uri,
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
      @JsonKey(name: 'media') List<MediaModel>? media,
      @JsonKey(name: 'eta_id') int? etaId});
}

/// @nodoc
class _$ArticleModelCopyWithImpl<$Res, $Val extends ArticleModel>
    implements $ArticleModelCopyWith<$Res> {
  _$ArticleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? url = freezed,
    Object? id = freezed,
    Object? assetId = freezed,
    Object? source = freezed,
    Object? publishedDate = freezed,
    Object? updated = freezed,
    Object? section = freezed,
    Object? subsection = freezed,
    Object? nytdsection = freezed,
    Object? adxKeywords = freezed,
    Object? byline = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? abstract = freezed,
    Object? desFacet = freezed,
    Object? orgFacet = freezed,
    Object? perFacet = freezed,
    Object? geoFacet = freezed,
    Object? media = freezed,
    Object? etaId = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      assetId: freezed == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      subsection: freezed == subsection
          ? _value.subsection
          : subsection // ignore: cast_nullable_to_non_nullable
              as String?,
      nytdsection: freezed == nytdsection
          ? _value.nytdsection
          : nytdsection // ignore: cast_nullable_to_non_nullable
              as String?,
      adxKeywords: freezed == adxKeywords
          ? _value.adxKeywords
          : adxKeywords // ignore: cast_nullable_to_non_nullable
              as String?,
      byline: freezed == byline
          ? _value.byline
          : byline // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      desFacet: freezed == desFacet
          ? _value.desFacet
          : desFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      orgFacet: freezed == orgFacet
          ? _value.orgFacet
          : orgFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      perFacet: freezed == perFacet
          ? _value.perFacet
          : perFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      geoFacet: freezed == geoFacet
          ? _value.geoFacet
          : geoFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>?,
      etaId: freezed == etaId
          ? _value.etaId
          : etaId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleModelImplCopyWith<$Res>
    implements $ArticleModelCopyWith<$Res> {
  factory _$$ArticleModelImplCopyWith(
          _$ArticleModelImpl value, $Res Function(_$ArticleModelImpl) then) =
      __$$ArticleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uri') String? uri,
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
      @JsonKey(name: 'media') List<MediaModel>? media,
      @JsonKey(name: 'eta_id') int? etaId});
}

/// @nodoc
class __$$ArticleModelImplCopyWithImpl<$Res>
    extends _$ArticleModelCopyWithImpl<$Res, _$ArticleModelImpl>
    implements _$$ArticleModelImplCopyWith<$Res> {
  __$$ArticleModelImplCopyWithImpl(
      _$ArticleModelImpl _value, $Res Function(_$ArticleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? url = freezed,
    Object? id = freezed,
    Object? assetId = freezed,
    Object? source = freezed,
    Object? publishedDate = freezed,
    Object? updated = freezed,
    Object? section = freezed,
    Object? subsection = freezed,
    Object? nytdsection = freezed,
    Object? adxKeywords = freezed,
    Object? byline = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? abstract = freezed,
    Object? desFacet = freezed,
    Object? orgFacet = freezed,
    Object? perFacet = freezed,
    Object? geoFacet = freezed,
    Object? media = freezed,
    Object? etaId = freezed,
  }) {
    return _then(_$ArticleModelImpl(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      assetId: freezed == assetId
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      subsection: freezed == subsection
          ? _value.subsection
          : subsection // ignore: cast_nullable_to_non_nullable
              as String?,
      nytdsection: freezed == nytdsection
          ? _value.nytdsection
          : nytdsection // ignore: cast_nullable_to_non_nullable
              as String?,
      adxKeywords: freezed == adxKeywords
          ? _value.adxKeywords
          : adxKeywords // ignore: cast_nullable_to_non_nullable
              as String?,
      byline: freezed == byline
          ? _value.byline
          : byline // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      abstract: freezed == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String?,
      desFacet: freezed == desFacet
          ? _value._desFacet
          : desFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      orgFacet: freezed == orgFacet
          ? _value._orgFacet
          : orgFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      perFacet: freezed == perFacet
          ? _value._perFacet
          : perFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      geoFacet: freezed == geoFacet
          ? _value._geoFacet
          : geoFacet // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>?,
      etaId: freezed == etaId
          ? _value.etaId
          : etaId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleModelImpl implements _ArticleModel {
  const _$ArticleModelImpl(
      {@JsonKey(name: 'uri') this.uri,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'asset_id') this.assetId,
      @JsonKey(name: 'source') this.source,
      @JsonKey(name: 'published_date') this.publishedDate,
      @JsonKey(name: 'updated') this.updated,
      @JsonKey(name: 'section') this.section,
      @JsonKey(name: 'subsection') this.subsection,
      @JsonKey(name: 'nytdsection') this.nytdsection,
      @JsonKey(name: 'adx_keywords') this.adxKeywords,
      @JsonKey(name: 'byline') this.byline,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'abstract') this.abstract,
      @JsonKey(name: 'des_facet') final List<String>? desFacet,
      @JsonKey(name: 'org_facet') final List<String>? orgFacet,
      @JsonKey(name: 'per_facet') final List<String>? perFacet,
      @JsonKey(name: 'geo_facet') final List<String>? geoFacet,
      @JsonKey(name: 'media') final List<MediaModel>? media,
      @JsonKey(name: 'eta_id') this.etaId})
      : _desFacet = desFacet,
        _orgFacet = orgFacet,
        _perFacet = perFacet,
        _geoFacet = geoFacet,
        _media = media;

  factory _$ArticleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleModelImplFromJson(json);

  @override
  @JsonKey(name: 'uri')
  final String? uri;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'asset_id')
  final int? assetId;
  @override
  @JsonKey(name: 'source')
  final String? source;
  @override
  @JsonKey(name: 'published_date')
  final String? publishedDate;
  @override
  @JsonKey(name: 'updated')
  final String? updated;
  @override
  @JsonKey(name: 'section')
  final String? section;
  @override
  @JsonKey(name: 'subsection')
  final String? subsection;
  @override
  @JsonKey(name: 'nytdsection')
  final String? nytdsection;
  @override
  @JsonKey(name: 'adx_keywords')
  final String? adxKeywords;
  @override
  @JsonKey(name: 'byline')
  final String? byline;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'abstract')
  final String? abstract;
  final List<String>? _desFacet;
  @override
  @JsonKey(name: 'des_facet')
  List<String>? get desFacet {
    final value = _desFacet;
    if (value == null) return null;
    if (_desFacet is EqualUnmodifiableListView) return _desFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _orgFacet;
  @override
  @JsonKey(name: 'org_facet')
  List<String>? get orgFacet {
    final value = _orgFacet;
    if (value == null) return null;
    if (_orgFacet is EqualUnmodifiableListView) return _orgFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _perFacet;
  @override
  @JsonKey(name: 'per_facet')
  List<String>? get perFacet {
    final value = _perFacet;
    if (value == null) return null;
    if (_perFacet is EqualUnmodifiableListView) return _perFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _geoFacet;
  @override
  @JsonKey(name: 'geo_facet')
  List<String>? get geoFacet {
    final value = _geoFacet;
    if (value == null) return null;
    if (_geoFacet is EqualUnmodifiableListView) return _geoFacet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MediaModel>? _media;
  @override
  @JsonKey(name: 'media')
  List<MediaModel>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'eta_id')
  final int? etaId;

  @override
  String toString() {
    return 'ArticleModel(uri: $uri, url: $url, id: $id, assetId: $assetId, source: $source, publishedDate: $publishedDate, updated: $updated, section: $section, subsection: $subsection, nytdsection: $nytdsection, adxKeywords: $adxKeywords, byline: $byline, type: $type, title: $title, abstract: $abstract, desFacet: $desFacet, orgFacet: $orgFacet, perFacet: $perFacet, geoFacet: $geoFacet, media: $media, etaId: $etaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleModelImpl &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.assetId, assetId) || other.assetId == assetId) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.subsection, subsection) ||
                other.subsection == subsection) &&
            (identical(other.nytdsection, nytdsection) ||
                other.nytdsection == nytdsection) &&
            (identical(other.adxKeywords, adxKeywords) ||
                other.adxKeywords == adxKeywords) &&
            (identical(other.byline, byline) || other.byline == byline) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.abstract, abstract) ||
                other.abstract == abstract) &&
            const DeepCollectionEquality().equals(other._desFacet, _desFacet) &&
            const DeepCollectionEquality().equals(other._orgFacet, _orgFacet) &&
            const DeepCollectionEquality().equals(other._perFacet, _perFacet) &&
            const DeepCollectionEquality().equals(other._geoFacet, _geoFacet) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.etaId, etaId) || other.etaId == etaId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uri,
        url,
        id,
        assetId,
        source,
        publishedDate,
        updated,
        section,
        subsection,
        nytdsection,
        adxKeywords,
        byline,
        type,
        title,
        abstract,
        const DeepCollectionEquality().hash(_desFacet),
        const DeepCollectionEquality().hash(_orgFacet),
        const DeepCollectionEquality().hash(_perFacet),
        const DeepCollectionEquality().hash(_geoFacet),
        const DeepCollectionEquality().hash(_media),
        etaId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleModelImplCopyWith<_$ArticleModelImpl> get copyWith =>
      __$$ArticleModelImplCopyWithImpl<_$ArticleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleModelImplToJson(
      this,
    );
  }
}

abstract class _ArticleModel implements ArticleModel {
  const factory _ArticleModel(
      {@JsonKey(name: 'uri') final String? uri,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'asset_id') final int? assetId,
      @JsonKey(name: 'source') final String? source,
      @JsonKey(name: 'published_date') final String? publishedDate,
      @JsonKey(name: 'updated') final String? updated,
      @JsonKey(name: 'section') final String? section,
      @JsonKey(name: 'subsection') final String? subsection,
      @JsonKey(name: 'nytdsection') final String? nytdsection,
      @JsonKey(name: 'adx_keywords') final String? adxKeywords,
      @JsonKey(name: 'byline') final String? byline,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'abstract') final String? abstract,
      @JsonKey(name: 'des_facet') final List<String>? desFacet,
      @JsonKey(name: 'org_facet') final List<String>? orgFacet,
      @JsonKey(name: 'per_facet') final List<String>? perFacet,
      @JsonKey(name: 'geo_facet') final List<String>? geoFacet,
      @JsonKey(name: 'media') final List<MediaModel>? media,
      @JsonKey(name: 'eta_id') final int? etaId}) = _$ArticleModelImpl;

  factory _ArticleModel.fromJson(Map<String, dynamic> json) =
      _$ArticleModelImpl.fromJson;

  @override
  @JsonKey(name: 'uri')
  String? get uri;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'asset_id')
  int? get assetId;
  @override
  @JsonKey(name: 'source')
  String? get source;
  @override
  @JsonKey(name: 'published_date')
  String? get publishedDate;
  @override
  @JsonKey(name: 'updated')
  String? get updated;
  @override
  @JsonKey(name: 'section')
  String? get section;
  @override
  @JsonKey(name: 'subsection')
  String? get subsection;
  @override
  @JsonKey(name: 'nytdsection')
  String? get nytdsection;
  @override
  @JsonKey(name: 'adx_keywords')
  String? get adxKeywords;
  @override
  @JsonKey(name: 'byline')
  String? get byline;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'abstract')
  String? get abstract;
  @override
  @JsonKey(name: 'des_facet')
  List<String>? get desFacet;
  @override
  @JsonKey(name: 'org_facet')
  List<String>? get orgFacet;
  @override
  @JsonKey(name: 'per_facet')
  List<String>? get perFacet;
  @override
  @JsonKey(name: 'geo_facet')
  List<String>? get geoFacet;
  @override
  @JsonKey(name: 'media')
  List<MediaModel>? get media;
  @override
  @JsonKey(name: 'eta_id')
  int? get etaId;
  @override
  @JsonKey(ignore: true)
  _$$ArticleModelImplCopyWith<_$ArticleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
