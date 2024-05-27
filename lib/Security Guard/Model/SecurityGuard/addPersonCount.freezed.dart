// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addPersonCount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonCount _$PersonCountFromJson(Map<String, dynamic> json) {
  return _PersonCount.fromJson(json);
}

/// @nodoc
mixin _$PersonCount {
  int? get count_in => throw _privateConstructorUsedError;
  int? get count_out => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCountCopyWith<PersonCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCountCopyWith<$Res> {
  factory $PersonCountCopyWith(
          PersonCount value, $Res Function(PersonCount) then) =
      _$PersonCountCopyWithImpl<$Res, PersonCount>;
  @useResult
  $Res call({int? count_in, int? count_out});
}

/// @nodoc
class _$PersonCountCopyWithImpl<$Res, $Val extends PersonCount>
    implements $PersonCountCopyWith<$Res> {
  _$PersonCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count_in = freezed,
    Object? count_out = freezed,
  }) {
    return _then(_value.copyWith(
      count_in: freezed == count_in
          ? _value.count_in
          : count_in // ignore: cast_nullable_to_non_nullable
              as int?,
      count_out: freezed == count_out
          ? _value.count_out
          : count_out // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonCountImplCopyWith<$Res>
    implements $PersonCountCopyWith<$Res> {
  factory _$$PersonCountImplCopyWith(
          _$PersonCountImpl value, $Res Function(_$PersonCountImpl) then) =
      __$$PersonCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count_in, int? count_out});
}

/// @nodoc
class __$$PersonCountImplCopyWithImpl<$Res>
    extends _$PersonCountCopyWithImpl<$Res, _$PersonCountImpl>
    implements _$$PersonCountImplCopyWith<$Res> {
  __$$PersonCountImplCopyWithImpl(
      _$PersonCountImpl _value, $Res Function(_$PersonCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count_in = freezed,
    Object? count_out = freezed,
  }) {
    return _then(_$PersonCountImpl(
      count_in: freezed == count_in
          ? _value.count_in
          : count_in // ignore: cast_nullable_to_non_nullable
              as int?,
      count_out: freezed == count_out
          ? _value.count_out
          : count_out // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonCountImpl implements _PersonCount {
  const _$PersonCountImpl({this.count_in, this.count_out});

  factory _$PersonCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonCountImplFromJson(json);

  @override
  final int? count_in;
  @override
  final int? count_out;

  @override
  String toString() {
    return 'PersonCount(count_in: $count_in, count_out: $count_out)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonCountImpl &&
            (identical(other.count_in, count_in) ||
                other.count_in == count_in) &&
            (identical(other.count_out, count_out) ||
                other.count_out == count_out));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count_in, count_out);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonCountImplCopyWith<_$PersonCountImpl> get copyWith =>
      __$$PersonCountImplCopyWithImpl<_$PersonCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonCountImplToJson(
      this,
    );
  }
}

abstract class _PersonCount implements PersonCount {
  const factory _PersonCount({final int? count_in, final int? count_out}) =
      _$PersonCountImpl;

  factory _PersonCount.fromJson(Map<String, dynamic> json) =
      _$PersonCountImpl.fromJson;

  @override
  int? get count_in;
  @override
  int? get count_out;
  @override
  @JsonKey(ignore: true)
  _$$PersonCountImplCopyWith<_$PersonCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
