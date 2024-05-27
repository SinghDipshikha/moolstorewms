// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addMaterialCount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MaterialCount _$MaterialCountFromJson(Map<String, dynamic> json) {
  return _MaterialCount.fromJson(json);
}

/// @nodoc
mixin _$MaterialCount {
  int? get count_in => throw _privateConstructorUsedError;
  int? get count_out => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaterialCountCopyWith<MaterialCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialCountCopyWith<$Res> {
  factory $MaterialCountCopyWith(
          MaterialCount value, $Res Function(MaterialCount) then) =
      _$MaterialCountCopyWithImpl<$Res, MaterialCount>;
  @useResult
  $Res call({int? count_in, int? count_out});
}

/// @nodoc
class _$MaterialCountCopyWithImpl<$Res, $Val extends MaterialCount>
    implements $MaterialCountCopyWith<$Res> {
  _$MaterialCountCopyWithImpl(this._value, this._then);

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
abstract class _$$MaterialCountImplCopyWith<$Res>
    implements $MaterialCountCopyWith<$Res> {
  factory _$$MaterialCountImplCopyWith(
          _$MaterialCountImpl value, $Res Function(_$MaterialCountImpl) then) =
      __$$MaterialCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count_in, int? count_out});
}

/// @nodoc
class __$$MaterialCountImplCopyWithImpl<$Res>
    extends _$MaterialCountCopyWithImpl<$Res, _$MaterialCountImpl>
    implements _$$MaterialCountImplCopyWith<$Res> {
  __$$MaterialCountImplCopyWithImpl(
      _$MaterialCountImpl _value, $Res Function(_$MaterialCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count_in = freezed,
    Object? count_out = freezed,
  }) {
    return _then(_$MaterialCountImpl(
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
class _$MaterialCountImpl implements _MaterialCount {
  const _$MaterialCountImpl({this.count_in, this.count_out});

  factory _$MaterialCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaterialCountImplFromJson(json);

  @override
  final int? count_in;
  @override
  final int? count_out;

  @override
  String toString() {
    return 'MaterialCount(count_in: $count_in, count_out: $count_out)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialCountImpl &&
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
  _$$MaterialCountImplCopyWith<_$MaterialCountImpl> get copyWith =>
      __$$MaterialCountImplCopyWithImpl<_$MaterialCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaterialCountImplToJson(
      this,
    );
  }
}

abstract class _MaterialCount implements MaterialCount {
  const factory _MaterialCount({final int? count_in, final int? count_out}) =
      _$MaterialCountImpl;

  factory _MaterialCount.fromJson(Map<String, dynamic> json) =
      _$MaterialCountImpl.fromJson;

  @override
  int? get count_in;
  @override
  int? get count_out;
  @override
  @JsonKey(ignore: true)
  _$$MaterialCountImplCopyWith<_$MaterialCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
