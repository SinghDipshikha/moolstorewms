// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceEntry _$AttendanceEntryFromJson(Map<String, dynamic> json) {
  return _AttendanceEntry.fromJson(json);
}

/// @nodoc
mixin _$AttendanceEntry {
  String? get employeeID => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  DateTime? get shift_check_in => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  int? get warehouse_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceEntryCopyWith<AttendanceEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceEntryCopyWith<$Res> {
  factory $AttendanceEntryCopyWith(
          AttendanceEntry value, $Res Function(AttendanceEntry) then) =
      _$AttendanceEntryCopyWithImpl<$Res, AttendanceEntry>;
  @useResult
  $Res call(
      {String? employeeID,
      String? name,
      String? designation,
      DateTime? shift_check_in,
      String? status,
      DateTime? created_at,
      int? warehouse_id});
}

/// @nodoc
class _$AttendanceEntryCopyWithImpl<$Res, $Val extends AttendanceEntry>
    implements $AttendanceEntryCopyWith<$Res> {
  _$AttendanceEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeID = freezed,
    Object? name = freezed,
    Object? designation = freezed,
    Object? shift_check_in = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? warehouse_id = freezed,
  }) {
    return _then(_value.copyWith(
      employeeID: freezed == employeeID
          ? _value.employeeID
          : employeeID // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      shift_check_in: freezed == shift_check_in
          ? _value.shift_check_in
          : shift_check_in // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceEntryImplCopyWith<$Res>
    implements $AttendanceEntryCopyWith<$Res> {
  factory _$$AttendanceEntryImplCopyWith(_$AttendanceEntryImpl value,
          $Res Function(_$AttendanceEntryImpl) then) =
      __$$AttendanceEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? employeeID,
      String? name,
      String? designation,
      DateTime? shift_check_in,
      String? status,
      DateTime? created_at,
      int? warehouse_id});
}

/// @nodoc
class __$$AttendanceEntryImplCopyWithImpl<$Res>
    extends _$AttendanceEntryCopyWithImpl<$Res, _$AttendanceEntryImpl>
    implements _$$AttendanceEntryImplCopyWith<$Res> {
  __$$AttendanceEntryImplCopyWithImpl(
      _$AttendanceEntryImpl _value, $Res Function(_$AttendanceEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeID = freezed,
    Object? name = freezed,
    Object? designation = freezed,
    Object? shift_check_in = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? warehouse_id = freezed,
  }) {
    return _then(_$AttendanceEntryImpl(
      employeeID: freezed == employeeID
          ? _value.employeeID
          : employeeID // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      shift_check_in: freezed == shift_check_in
          ? _value.shift_check_in
          : shift_check_in // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceEntryImpl implements _AttendanceEntry {
  const _$AttendanceEntryImpl(
      {this.employeeID,
      this.name,
      this.designation,
      this.shift_check_in,
      this.status,
      this.created_at,
      this.warehouse_id});

  factory _$AttendanceEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceEntryImplFromJson(json);

  @override
  final String? employeeID;
  @override
  final String? name;
  @override
  final String? designation;
  @override
  final DateTime? shift_check_in;
  @override
  final String? status;
  @override
  final DateTime? created_at;
  @override
  final int? warehouse_id;

  @override
  String toString() {
    return 'AttendanceEntry(employeeID: $employeeID, name: $name, designation: $designation, shift_check_in: $shift_check_in, status: $status, created_at: $created_at, warehouse_id: $warehouse_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceEntryImpl &&
            (identical(other.employeeID, employeeID) ||
                other.employeeID == employeeID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.shift_check_in, shift_check_in) ||
                other.shift_check_in == shift_check_in) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.warehouse_id, warehouse_id) ||
                other.warehouse_id == warehouse_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, employeeID, name, designation,
      shift_check_in, status, created_at, warehouse_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceEntryImplCopyWith<_$AttendanceEntryImpl> get copyWith =>
      __$$AttendanceEntryImplCopyWithImpl<_$AttendanceEntryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceEntryImplToJson(
      this,
    );
  }
}

abstract class _AttendanceEntry implements AttendanceEntry {
  const factory _AttendanceEntry(
      {final String? employeeID,
      final String? name,
      final String? designation,
      final DateTime? shift_check_in,
      final String? status,
      final DateTime? created_at,
      final int? warehouse_id}) = _$AttendanceEntryImpl;

  factory _AttendanceEntry.fromJson(Map<String, dynamic> json) =
      _$AttendanceEntryImpl.fromJson;

  @override
  String? get employeeID;
  @override
  String? get name;
  @override
  String? get designation;
  @override
  DateTime? get shift_check_in;
  @override
  String? get status;
  @override
  DateTime? get created_at;
  @override
  int? get warehouse_id;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceEntryImplCopyWith<_$AttendanceEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
