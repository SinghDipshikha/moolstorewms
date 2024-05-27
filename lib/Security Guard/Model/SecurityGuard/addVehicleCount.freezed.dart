// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addVehicleCount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VehicleCount _$VehicleCountFromJson(Map<String, dynamic> json) {
  return _VehicleCount.fromJson(json);
}

/// @nodoc
mixin _$VehicleCount {
  int? get count_in => throw _privateConstructorUsedError;
  int? get count_out => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleCountCopyWith<VehicleCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCountCopyWith<$Res> {
  factory $VehicleCountCopyWith(
          VehicleCount value, $Res Function(VehicleCount) then) =
      _$VehicleCountCopyWithImpl<$Res, VehicleCount>;
  @useResult
  $Res call({int? count_in, int? count_out});
}

/// @nodoc
class _$VehicleCountCopyWithImpl<$Res, $Val extends VehicleCount>
    implements $VehicleCountCopyWith<$Res> {
  _$VehicleCountCopyWithImpl(this._value, this._then);

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
abstract class _$$VehicleCountImplCopyWith<$Res>
    implements $VehicleCountCopyWith<$Res> {
  factory _$$VehicleCountImplCopyWith(
          _$VehicleCountImpl value, $Res Function(_$VehicleCountImpl) then) =
      __$$VehicleCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count_in, int? count_out});
}

/// @nodoc
class __$$VehicleCountImplCopyWithImpl<$Res>
    extends _$VehicleCountCopyWithImpl<$Res, _$VehicleCountImpl>
    implements _$$VehicleCountImplCopyWith<$Res> {
  __$$VehicleCountImplCopyWithImpl(
      _$VehicleCountImpl _value, $Res Function(_$VehicleCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count_in = freezed,
    Object? count_out = freezed,
  }) {
    return _then(_$VehicleCountImpl(
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
class _$VehicleCountImpl implements _VehicleCount {
  const _$VehicleCountImpl({this.count_in, this.count_out});

  factory _$VehicleCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleCountImplFromJson(json);

  @override
  final int? count_in;
  @override
  final int? count_out;

  @override
  String toString() {
    return 'VehicleCount(count_in: $count_in, count_out: $count_out)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleCountImpl &&
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
  _$$VehicleCountImplCopyWith<_$VehicleCountImpl> get copyWith =>
      __$$VehicleCountImplCopyWithImpl<_$VehicleCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleCountImplToJson(
      this,
    );
  }
}

abstract class _VehicleCount implements VehicleCount {
  const factory _VehicleCount({final int? count_in, final int? count_out}) =
      _$VehicleCountImpl;

  factory _VehicleCount.fromJson(Map<String, dynamic> json) =
      _$VehicleCountImpl.fromJson;

  @override
  int? get count_in;
  @override
  int? get count_out;
  @override
  @JsonKey(ignore: true)
  _$$VehicleCountImplCopyWith<_$VehicleCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
