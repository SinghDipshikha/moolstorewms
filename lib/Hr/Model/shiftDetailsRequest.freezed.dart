// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shiftDetailsRequest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShiftDetailsRequest _$ShiftDetailsRequestFromJson(Map<String, dynamic> json) {
  return _ShiftDetailsRequest.fromJson(json);
}

/// @nodoc
mixin _$ShiftDetailsRequest {
  int? get id => throw _privateConstructorUsedError;
  String? get added_by => throw _privateConstructorUsedError;
  String? get shift_name => throw _privateConstructorUsedError;
  DateTime? get shift_check_in => throw _privateConstructorUsedError;
  DateTime? get shift_check_out => throw _privateConstructorUsedError;
  String? get warehouse_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftDetailsRequestCopyWith<ShiftDetailsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftDetailsRequestCopyWith<$Res> {
  factory $ShiftDetailsRequestCopyWith(
          ShiftDetailsRequest value, $Res Function(ShiftDetailsRequest) then) =
      _$ShiftDetailsRequestCopyWithImpl<$Res, ShiftDetailsRequest>;
  @useResult
  $Res call(
      {int? id,
      String? added_by,
      String? shift_name,
      DateTime? shift_check_in,
      DateTime? shift_check_out,
      String? warehouse_id});
}

/// @nodoc
class _$ShiftDetailsRequestCopyWithImpl<$Res, $Val extends ShiftDetailsRequest>
    implements $ShiftDetailsRequestCopyWith<$Res> {
  _$ShiftDetailsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? added_by = freezed,
    Object? shift_name = freezed,
    Object? shift_check_in = freezed,
    Object? shift_check_out = freezed,
    Object? warehouse_id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      added_by: freezed == added_by
          ? _value.added_by
          : added_by // ignore: cast_nullable_to_non_nullable
              as String?,
      shift_name: freezed == shift_name
          ? _value.shift_name
          : shift_name // ignore: cast_nullable_to_non_nullable
              as String?,
      shift_check_in: freezed == shift_check_in
          ? _value.shift_check_in
          : shift_check_in // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shift_check_out: freezed == shift_check_out
          ? _value.shift_check_out
          : shift_check_out // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShiftDetailsRequestImplCopyWith<$Res>
    implements $ShiftDetailsRequestCopyWith<$Res> {
  factory _$$ShiftDetailsRequestImplCopyWith(_$ShiftDetailsRequestImpl value,
          $Res Function(_$ShiftDetailsRequestImpl) then) =
      __$$ShiftDetailsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? added_by,
      String? shift_name,
      DateTime? shift_check_in,
      DateTime? shift_check_out,
      String? warehouse_id});
}

/// @nodoc
class __$$ShiftDetailsRequestImplCopyWithImpl<$Res>
    extends _$ShiftDetailsRequestCopyWithImpl<$Res, _$ShiftDetailsRequestImpl>
    implements _$$ShiftDetailsRequestImplCopyWith<$Res> {
  __$$ShiftDetailsRequestImplCopyWithImpl(_$ShiftDetailsRequestImpl _value,
      $Res Function(_$ShiftDetailsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? added_by = freezed,
    Object? shift_name = freezed,
    Object? shift_check_in = freezed,
    Object? shift_check_out = freezed,
    Object? warehouse_id = freezed,
  }) {
    return _then(_$ShiftDetailsRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      added_by: freezed == added_by
          ? _value.added_by
          : added_by // ignore: cast_nullable_to_non_nullable
              as String?,
      shift_name: freezed == shift_name
          ? _value.shift_name
          : shift_name // ignore: cast_nullable_to_non_nullable
              as String?,
      shift_check_in: freezed == shift_check_in
          ? _value.shift_check_in
          : shift_check_in // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      shift_check_out: freezed == shift_check_out
          ? _value.shift_check_out
          : shift_check_out // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShiftDetailsRequestImpl implements _ShiftDetailsRequest {
  const _$ShiftDetailsRequestImpl(
      {this.id,
      this.added_by,
      this.shift_name,
      this.shift_check_in,
      this.shift_check_out,
      this.warehouse_id});

  factory _$ShiftDetailsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShiftDetailsRequestImplFromJson(json);

  @override
  final int? id;
  @override
  final String? added_by;
  @override
  final String? shift_name;
  @override
  final DateTime? shift_check_in;
  @override
  final DateTime? shift_check_out;
  @override
  final String? warehouse_id;

  @override
  String toString() {
    return 'ShiftDetailsRequest(id: $id, added_by: $added_by, shift_name: $shift_name, shift_check_in: $shift_check_in, shift_check_out: $shift_check_out, warehouse_id: $warehouse_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShiftDetailsRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.added_by, added_by) ||
                other.added_by == added_by) &&
            (identical(other.shift_name, shift_name) ||
                other.shift_name == shift_name) &&
            (identical(other.shift_check_in, shift_check_in) ||
                other.shift_check_in == shift_check_in) &&
            (identical(other.shift_check_out, shift_check_out) ||
                other.shift_check_out == shift_check_out) &&
            (identical(other.warehouse_id, warehouse_id) ||
                other.warehouse_id == warehouse_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, added_by, shift_name,
      shift_check_in, shift_check_out, warehouse_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShiftDetailsRequestImplCopyWith<_$ShiftDetailsRequestImpl> get copyWith =>
      __$$ShiftDetailsRequestImplCopyWithImpl<_$ShiftDetailsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShiftDetailsRequestImplToJson(
      this,
    );
  }
}

abstract class _ShiftDetailsRequest implements ShiftDetailsRequest {
  const factory _ShiftDetailsRequest(
      {final int? id,
      final String? added_by,
      final String? shift_name,
      final DateTime? shift_check_in,
      final DateTime? shift_check_out,
      final String? warehouse_id}) = _$ShiftDetailsRequestImpl;

  factory _ShiftDetailsRequest.fromJson(Map<String, dynamic> json) =
      _$ShiftDetailsRequestImpl.fromJson;

  @override
  int? get id;
  @override
  String? get added_by;
  @override
  String? get shift_name;
  @override
  DateTime? get shift_check_in;
  @override
  DateTime? get shift_check_out;
  @override
  String? get warehouse_id;
  @override
  @JsonKey(ignore: true)
  _$$ShiftDetailsRequestImplCopyWith<_$ShiftDetailsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
