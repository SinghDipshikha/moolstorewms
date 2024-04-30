// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personType.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonType _$PersonTypeFromJson(Map<String, dynamic> json) {
  return _PersonType.fromJson(json);
}

/// @nodoc
mixin _$PersonType {
  int? get id => throw _privateConstructorUsedError;
  String? get person_type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonTypeCopyWith<PersonType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonTypeCopyWith<$Res> {
  factory $PersonTypeCopyWith(
          PersonType value, $Res Function(PersonType) then) =
      _$PersonTypeCopyWithImpl<$Res, PersonType>;
  @useResult
  $Res call({int? id, String? person_type});
}

/// @nodoc
class _$PersonTypeCopyWithImpl<$Res, $Val extends PersonType>
    implements $PersonTypeCopyWith<$Res> {
  _$PersonTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? person_type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      person_type: freezed == person_type
          ? _value.person_type
          : person_type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonTypeImplCopyWith<$Res>
    implements $PersonTypeCopyWith<$Res> {
  factory _$$PersonTypeImplCopyWith(
          _$PersonTypeImpl value, $Res Function(_$PersonTypeImpl) then) =
      __$$PersonTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? person_type});
}

/// @nodoc
class __$$PersonTypeImplCopyWithImpl<$Res>
    extends _$PersonTypeCopyWithImpl<$Res, _$PersonTypeImpl>
    implements _$$PersonTypeImplCopyWith<$Res> {
  __$$PersonTypeImplCopyWithImpl(
      _$PersonTypeImpl _value, $Res Function(_$PersonTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? person_type = freezed,
  }) {
    return _then(_$PersonTypeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      person_type: freezed == person_type
          ? _value.person_type
          : person_type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonTypeImpl implements _PersonType {
  const _$PersonTypeImpl({this.id, this.person_type});

  factory _$PersonTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonTypeImplFromJson(json);

  @override
  final int? id;
  @override
  final String? person_type;

  @override
  String toString() {
    return 'PersonType(id: $id, person_type: $person_type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.person_type, person_type) ||
                other.person_type == person_type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, person_type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonTypeImplCopyWith<_$PersonTypeImpl> get copyWith =>
      __$$PersonTypeImplCopyWithImpl<_$PersonTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonTypeImplToJson(
      this,
    );
  }
}

abstract class _PersonType implements PersonType {
  const factory _PersonType({final int? id, final String? person_type}) =
      _$PersonTypeImpl;

  factory _PersonType.fromJson(Map<String, dynamic> json) =
      _$PersonTypeImpl.fromJson;

  @override
  int? get id;
  @override
  String? get person_type;
  @override
  @JsonKey(ignore: true)
  _$$PersonTypeImplCopyWith<_$PersonTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
