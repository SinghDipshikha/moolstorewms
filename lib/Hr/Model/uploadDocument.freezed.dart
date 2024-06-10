// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uploadDocument.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadDocument _$UploadDocumentFromJson(Map<String, dynamic> json) {
  return _UploadDocument.fromJson(json);
}

/// @nodoc
mixin _$UploadDocument {
  int? get user_id => throw _privateConstructorUsedError;
  String? get file_path => throw _privateConstructorUsedError;
  String? get file_type => throw _privateConstructorUsedError;
  List<Map<String, String?>>? get label_name =>
      throw _privateConstructorUsedError;
  int? get updated_by => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadDocumentCopyWith<UploadDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadDocumentCopyWith<$Res> {
  factory $UploadDocumentCopyWith(
          UploadDocument value, $Res Function(UploadDocument) then) =
      _$UploadDocumentCopyWithImpl<$Res, UploadDocument>;
  @useResult
  $Res call(
      {int? user_id,
      String? file_path,
      String? file_type,
      List<Map<String, String?>>? label_name,
      int? updated_by});
}

/// @nodoc
class _$UploadDocumentCopyWithImpl<$Res, $Val extends UploadDocument>
    implements $UploadDocumentCopyWith<$Res> {
  _$UploadDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = freezed,
    Object? file_path = freezed,
    Object? file_type = freezed,
    Object? label_name = freezed,
    Object? updated_by = freezed,
  }) {
    return _then(_value.copyWith(
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      file_path: freezed == file_path
          ? _value.file_path
          : file_path // ignore: cast_nullable_to_non_nullable
              as String?,
      file_type: freezed == file_type
          ? _value.file_type
          : file_type // ignore: cast_nullable_to_non_nullable
              as String?,
      label_name: freezed == label_name
          ? _value.label_name
          : label_name // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String?>>?,
      updated_by: freezed == updated_by
          ? _value.updated_by
          : updated_by // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadDocumentImplCopyWith<$Res>
    implements $UploadDocumentCopyWith<$Res> {
  factory _$$UploadDocumentImplCopyWith(_$UploadDocumentImpl value,
          $Res Function(_$UploadDocumentImpl) then) =
      __$$UploadDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? user_id,
      String? file_path,
      String? file_type,
      List<Map<String, String?>>? label_name,
      int? updated_by});
}

/// @nodoc
class __$$UploadDocumentImplCopyWithImpl<$Res>
    extends _$UploadDocumentCopyWithImpl<$Res, _$UploadDocumentImpl>
    implements _$$UploadDocumentImplCopyWith<$Res> {
  __$$UploadDocumentImplCopyWithImpl(
      _$UploadDocumentImpl _value, $Res Function(_$UploadDocumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = freezed,
    Object? file_path = freezed,
    Object? file_type = freezed,
    Object? label_name = freezed,
    Object? updated_by = freezed,
  }) {
    return _then(_$UploadDocumentImpl(
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      file_path: freezed == file_path
          ? _value.file_path
          : file_path // ignore: cast_nullable_to_non_nullable
              as String?,
      file_type: freezed == file_type
          ? _value.file_type
          : file_type // ignore: cast_nullable_to_non_nullable
              as String?,
      label_name: freezed == label_name
          ? _value._label_name
          : label_name // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String?>>?,
      updated_by: freezed == updated_by
          ? _value.updated_by
          : updated_by // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadDocumentImpl implements _UploadDocument {
  const _$UploadDocumentImpl(
      {this.user_id,
      this.file_path,
      this.file_type,
      final List<Map<String, String?>>? label_name,
      this.updated_by})
      : _label_name = label_name;

  factory _$UploadDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadDocumentImplFromJson(json);

  @override
  final int? user_id;
  @override
  final String? file_path;
  @override
  final String? file_type;
  final List<Map<String, String?>>? _label_name;
  @override
  List<Map<String, String?>>? get label_name {
    final value = _label_name;
    if (value == null) return null;
    if (_label_name is EqualUnmodifiableListView) return _label_name;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? updated_by;

  @override
  String toString() {
    return 'UploadDocument(user_id: $user_id, file_path: $file_path, file_type: $file_type, label_name: $label_name, updated_by: $updated_by)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadDocumentImpl &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.file_path, file_path) ||
                other.file_path == file_path) &&
            (identical(other.file_type, file_type) ||
                other.file_type == file_type) &&
            const DeepCollectionEquality()
                .equals(other._label_name, _label_name) &&
            (identical(other.updated_by, updated_by) ||
                other.updated_by == updated_by));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user_id, file_path, file_type,
      const DeepCollectionEquality().hash(_label_name), updated_by);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadDocumentImplCopyWith<_$UploadDocumentImpl> get copyWith =>
      __$$UploadDocumentImplCopyWithImpl<_$UploadDocumentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadDocumentImplToJson(
      this,
    );
  }
}

abstract class _UploadDocument implements UploadDocument {
  const factory _UploadDocument(
      {final int? user_id,
      final String? file_path,
      final String? file_type,
      final List<Map<String, String?>>? label_name,
      final int? updated_by}) = _$UploadDocumentImpl;

  factory _UploadDocument.fromJson(Map<String, dynamic> json) =
      _$UploadDocumentImpl.fromJson;

  @override
  int? get user_id;
  @override
  String? get file_path;
  @override
  String? get file_type;
  @override
  List<Map<String, String?>>? get label_name;
  @override
  int? get updated_by;
  @override
  @JsonKey(ignore: true)
  _$$UploadDocumentImplCopyWith<_$UploadDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
