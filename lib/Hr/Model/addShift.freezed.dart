// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addShift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddShift _$AddShiftFromJson(Map<String, dynamic> json) {
  return _AddShift.fromJson(json);
}

/// @nodoc
mixin _$AddShift {
  int? get id => throw _privateConstructorUsedError;
  int? get added_by => throw _privateConstructorUsedError;
  String? get shift_name => throw _privateConstructorUsedError;
  String? get shift_check_in => throw _privateConstructorUsedError;
  String? get shift_check_out => throw _privateConstructorUsedError;
  int? get warehouse_id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  dynamic get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddShiftCopyWith<AddShift> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddShiftCopyWith<$Res> {
  factory $AddShiftCopyWith(AddShift value, $Res Function(AddShift) then) =
      _$AddShiftCopyWithImpl<$Res, AddShift>;
  @useResult
  $Res call(
      {int? id,
      int? added_by,
      String? shift_name,
      String? shift_check_in,
      String? shift_check_out,
      int? warehouse_id,
      DateTime? created_at,
      dynamic updated_at});
}

/// @nodoc
class _$AddShiftCopyWithImpl<$Res, $Val extends AddShift>
    implements $AddShiftCopyWith<$Res> {
  _$AddShiftCopyWithImpl(this._value, this._then);

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
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      added_by: freezed == added_by
          ? _value.added_by
          : added_by // ignore: cast_nullable_to_non_nullable
              as int?,
      shift_name: freezed == shift_name
          ? _value.shift_name
          : shift_name // ignore: cast_nullable_to_non_nullable
              as String?,
      shift_check_in: freezed == shift_check_in
          ? _value.shift_check_in
          : shift_check_in // ignore: cast_nullable_to_non_nullable
              as String?,
      shift_check_out: freezed == shift_check_out
          ? _value.shift_check_out
          : shift_check_out // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddShiftImplCopyWith<$Res>
    implements $AddShiftCopyWith<$Res> {
  factory _$$AddShiftImplCopyWith(
          _$AddShiftImpl value, $Res Function(_$AddShiftImpl) then) =
      __$$AddShiftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? added_by,
      String? shift_name,
      String? shift_check_in,
      String? shift_check_out,
      int? warehouse_id,
      DateTime? created_at,
      dynamic updated_at});
}

/// @nodoc
class __$$AddShiftImplCopyWithImpl<$Res>
    extends _$AddShiftCopyWithImpl<$Res, _$AddShiftImpl>
    implements _$$AddShiftImplCopyWith<$Res> {
  __$$AddShiftImplCopyWithImpl(
      _$AddShiftImpl _value, $Res Function(_$AddShiftImpl) _then)
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
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$AddShiftImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      added_by: freezed == added_by
          ? _value.added_by
          : added_by // ignore: cast_nullable_to_non_nullable
              as int?,
      shift_name: freezed == shift_name
          ? _value.shift_name
          : shift_name // ignore: cast_nullable_to_non_nullable
              as String?,
      shift_check_in: freezed == shift_check_in
          ? _value.shift_check_in
          : shift_check_in // ignore: cast_nullable_to_non_nullable
              as String?,
      shift_check_out: freezed == shift_check_out
          ? _value.shift_check_out
          : shift_check_out // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at ? _value.updated_at! : updated_at,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddShiftImpl implements _AddShift {
  const _$AddShiftImpl(
      {this.id,
      this.added_by,
      this.shift_name,
      this.shift_check_in,
      this.shift_check_out,
      this.warehouse_id,
      this.created_at,
      this.updated_at});

  factory _$AddShiftImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddShiftImplFromJson(json);

  @override
  final int? id;
  @override
  final int? added_by;
  @override
  final String? shift_name;
  @override
  final String? shift_check_in;
  @override
  final String? shift_check_out;
  @override
  final int? warehouse_id;
  @override
  final DateTime? created_at;
  @override
  final dynamic updated_at;

  @override
  String toString() {
    return 'AddShift(id: $id, added_by: $added_by, shift_name: $shift_name, shift_check_in: $shift_check_in, shift_check_out: $shift_check_out, warehouse_id: $warehouse_id, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddShiftImpl &&
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
                other.warehouse_id == warehouse_id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      added_by,
      shift_name,
      shift_check_in,
      shift_check_out,
      warehouse_id,
      created_at,
      const DeepCollectionEquality().hash(updated_at));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddShiftImplCopyWith<_$AddShiftImpl> get copyWith =>
      __$$AddShiftImplCopyWithImpl<_$AddShiftImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddShiftImplToJson(
      this,
    );
  }
}

abstract class _AddShift implements AddShift {
  const factory _AddShift(
      {final int? id,
      final int? added_by,
      final String? shift_name,
      final String? shift_check_in,
      final String? shift_check_out,
      final int? warehouse_id,
      final DateTime? created_at,
      final dynamic updated_at}) = _$AddShiftImpl;

  factory _AddShift.fromJson(Map<String, dynamic> json) =
      _$AddShiftImpl.fromJson;

  @override
  int? get id;
  @override
  int? get added_by;
  @override
  String? get shift_name;
  @override
  String? get shift_check_in;
  @override
  String? get shift_check_out;
  @override
  int? get warehouse_id;
  @override
  DateTime? get created_at;
  @override
  dynamic get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$AddShiftImplCopyWith<_$AddShiftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
