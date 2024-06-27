// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assetCatoegories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssetCatoegory _$AssetCatoegoryFromJson(Map<String, dynamic> json) {
  return _AssetCatoegory.fromJson(json);
}

/// @nodoc
mixin _$AssetCatoegory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetCatoegoryCopyWith<AssetCatoegory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetCatoegoryCopyWith<$Res> {
  factory $AssetCatoegoryCopyWith(
          AssetCatoegory value, $Res Function(AssetCatoegory) then) =
      _$AssetCatoegoryCopyWithImpl<$Res, AssetCatoegory>;
  @useResult
  $Res call({int id, String name, String? slug, int? status});
}

/// @nodoc
class _$AssetCatoegoryCopyWithImpl<$Res, $Val extends AssetCatoegory>
    implements $AssetCatoegoryCopyWith<$Res> {
  _$AssetCatoegoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssetCatoegoryImplCopyWith<$Res>
    implements $AssetCatoegoryCopyWith<$Res> {
  factory _$$AssetCatoegoryImplCopyWith(_$AssetCatoegoryImpl value,
          $Res Function(_$AssetCatoegoryImpl) then) =
      __$$AssetCatoegoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? slug, int? status});
}

/// @nodoc
class __$$AssetCatoegoryImplCopyWithImpl<$Res>
    extends _$AssetCatoegoryCopyWithImpl<$Res, _$AssetCatoegoryImpl>
    implements _$$AssetCatoegoryImplCopyWith<$Res> {
  __$$AssetCatoegoryImplCopyWithImpl(
      _$AssetCatoegoryImpl _value, $Res Function(_$AssetCatoegoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = freezed,
    Object? status = freezed,
  }) {
    return _then(_$AssetCatoegoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssetCatoegoryImpl implements _AssetCatoegory {
  const _$AssetCatoegoryImpl(
      {required this.id, required this.name, this.slug, this.status});

  factory _$AssetCatoegoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssetCatoegoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? slug;
  @override
  final int? status;

  @override
  String toString() {
    return 'AssetCatoegory(id: $id, name: $name, slug: $slug, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetCatoegoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, slug, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetCatoegoryImplCopyWith<_$AssetCatoegoryImpl> get copyWith =>
      __$$AssetCatoegoryImplCopyWithImpl<_$AssetCatoegoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssetCatoegoryImplToJson(
      this,
    );
  }
}

abstract class _AssetCatoegory implements AssetCatoegory {
  const factory _AssetCatoegory(
      {required final int id,
      required final String name,
      final String? slug,
      final int? status}) = _$AssetCatoegoryImpl;

  factory _AssetCatoegory.fromJson(Map<String, dynamic> json) =
      _$AssetCatoegoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get slug;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$AssetCatoegoryImplCopyWith<_$AssetCatoegoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
