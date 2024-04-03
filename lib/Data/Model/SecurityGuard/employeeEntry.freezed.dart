// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employeeEntry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmployeeEntry _$EmployeeEntryFromJson(Map<String, dynamic> json) {
  return _EmployeeEntry.fromJson(json);
}

/// @nodoc
mixin _$EmployeeEntry {
  dynamic get employeeId => throw _privateConstructorUsedError;
  dynamic get name => throw _privateConstructorUsedError;
  dynamic get mobile => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  dynamic get date => throw _privateConstructorUsedError;
  dynamic get time => throw _privateConstructorUsedError;
  String? get gate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeEntryCopyWith<EmployeeEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEntryCopyWith<$Res> {
  factory $EmployeeEntryCopyWith(
          EmployeeEntry value, $Res Function(EmployeeEntry) then) =
      _$EmployeeEntryCopyWithImpl<$Res, EmployeeEntry>;
  @useResult
  $Res call(
      {dynamic employeeId,
      dynamic name,
      dynamic mobile,
      String? status,
      dynamic date,
      dynamic time,
      String? gate});
}

/// @nodoc
class _$EmployeeEntryCopyWithImpl<$Res, $Val extends EmployeeEntry>
    implements $EmployeeEntryCopyWith<$Res> {
  _$EmployeeEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = freezed,
    Object? name = freezed,
    Object? mobile = freezed,
    Object? status = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? gate = freezed,
  }) {
    return _then(_value.copyWith(
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as dynamic,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gate: freezed == gate
          ? _value.gate
          : gate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeEntryImplCopyWith<$Res>
    implements $EmployeeEntryCopyWith<$Res> {
  factory _$$EmployeeEntryImplCopyWith(
          _$EmployeeEntryImpl value, $Res Function(_$EmployeeEntryImpl) then) =
      __$$EmployeeEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic employeeId,
      dynamic name,
      dynamic mobile,
      String? status,
      dynamic date,
      dynamic time,
      String? gate});
}

/// @nodoc
class __$$EmployeeEntryImplCopyWithImpl<$Res>
    extends _$EmployeeEntryCopyWithImpl<$Res, _$EmployeeEntryImpl>
    implements _$$EmployeeEntryImplCopyWith<$Res> {
  __$$EmployeeEntryImplCopyWithImpl(
      _$EmployeeEntryImpl _value, $Res Function(_$EmployeeEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = freezed,
    Object? name = freezed,
    Object? mobile = freezed,
    Object? status = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? gate = freezed,
  }) {
    return _then(_$EmployeeEntryImpl(
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as dynamic,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gate: freezed == gate
          ? _value.gate
          : gate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeEntryImpl implements _EmployeeEntry {
  const _$EmployeeEntryImpl(
      {this.employeeId,
      this.name,
      this.mobile,
      this.status,
      this.date,
      this.time,
      this.gate});

  factory _$EmployeeEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeEntryImplFromJson(json);

  @override
  final dynamic employeeId;
  @override
  final dynamic name;
  @override
  final dynamic mobile;
  @override
  final String? status;
  @override
  final dynamic date;
  @override
  final dynamic time;
  @override
  final String? gate;

  @override
  String toString() {
    return 'EmployeeEntry(employeeId: $employeeId, name: $name, mobile: $mobile, status: $status, date: $date, time: $time, gate: $gate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeEntryImpl &&
            const DeepCollectionEquality()
                .equals(other.employeeId, employeeId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.mobile, mobile) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            (identical(other.gate, gate) || other.gate == gate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(employeeId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(mobile),
      status,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(time),
      gate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeEntryImplCopyWith<_$EmployeeEntryImpl> get copyWith =>
      __$$EmployeeEntryImplCopyWithImpl<_$EmployeeEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeEntryImplToJson(
      this,
    );
  }
}

abstract class _EmployeeEntry implements EmployeeEntry {
  const factory _EmployeeEntry(
      {final dynamic employeeId,
      final dynamic name,
      final dynamic mobile,
      final String? status,
      final dynamic date,
      final dynamic time,
      final String? gate}) = _$EmployeeEntryImpl;

  factory _EmployeeEntry.fromJson(Map<String, dynamic> json) =
      _$EmployeeEntryImpl.fromJson;

  @override
  dynamic get employeeId;
  @override
  dynamic get name;
  @override
  dynamic get mobile;
  @override
  String? get status;
  @override
  dynamic get date;
  @override
  dynamic get time;
  @override
  String? get gate;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeEntryImplCopyWith<_$EmployeeEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
