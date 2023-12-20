// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_metadata_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaMetadataModel _$MediaMetadataModelFromJson(Map<String, dynamic> json) {
  return _MediaMetadataModel.fromJson(json);
}

/// @nodoc
mixin _$MediaMetadataModel {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'format')
  String? get format => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaMetadataModelCopyWith<MediaMetadataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaMetadataModelCopyWith<$Res> {
  factory $MediaMetadataModelCopyWith(
          MediaMetadataModel value, $Res Function(MediaMetadataModel) then) =
      _$MediaMetadataModelCopyWithImpl<$Res, MediaMetadataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'width') int? width});
}

/// @nodoc
class _$MediaMetadataModelCopyWithImpl<$Res, $Val extends MediaMetadataModel>
    implements $MediaMetadataModelCopyWith<$Res> {
  _$MediaMetadataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? format = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaMetadataModelImplCopyWith<$Res>
    implements $MediaMetadataModelCopyWith<$Res> {
  factory _$$MediaMetadataModelImplCopyWith(_$MediaMetadataModelImpl value,
          $Res Function(_$MediaMetadataModelImpl) then) =
      __$$MediaMetadataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'url') String? url,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'width') int? width});
}

/// @nodoc
class __$$MediaMetadataModelImplCopyWithImpl<$Res>
    extends _$MediaMetadataModelCopyWithImpl<$Res, _$MediaMetadataModelImpl>
    implements _$$MediaMetadataModelImplCopyWith<$Res> {
  __$$MediaMetadataModelImplCopyWithImpl(_$MediaMetadataModelImpl _value,
      $Res Function(_$MediaMetadataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? format = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$MediaMetadataModelImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaMetadataModelImpl implements _MediaMetadataModel {
  const _$MediaMetadataModelImpl(
      {@JsonKey(name: 'url') this.url,
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'width') this.width});

  factory _$MediaMetadataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaMetadataModelImplFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'format')
  final String? format;
  @override
  @JsonKey(name: 'height')
  final int? height;
  @override
  @JsonKey(name: 'width')
  final int? width;

  @override
  String toString() {
    return 'MediaMetadataModel(url: $url, format: $format, height: $height, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaMetadataModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, format, height, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaMetadataModelImplCopyWith<_$MediaMetadataModelImpl> get copyWith =>
      __$$MediaMetadataModelImplCopyWithImpl<_$MediaMetadataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaMetadataModelImplToJson(
      this,
    );
  }
}

abstract class _MediaMetadataModel implements MediaMetadataModel {
  const factory _MediaMetadataModel(
      {@JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'format') final String? format,
      @JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'width') final int? width}) = _$MediaMetadataModelImpl;

  factory _MediaMetadataModel.fromJson(Map<String, dynamic> json) =
      _$MediaMetadataModelImpl.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'format')
  String? get format;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$MediaMetadataModelImplCopyWith<_$MediaMetadataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
