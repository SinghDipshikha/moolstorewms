// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Employee _$EmployeeFromJson(Map<String, dynamic> json) {
  return _Employee.fromJson(json);
}

/// @nodoc
mixin _$Employee {
  String? get name => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get employeeID => throw _privateConstructorUsedError;
  dynamic get warehouseID => throw _privateConstructorUsedError;
  DateTime? get timestamp => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  List<String>? get personType => throw _privateConstructorUsedError;
  int? get isShow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeCopyWith<Employee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) then) =
      _$EmployeeCopyWithImpl<$Res, Employee>;
  @useResult
  $Res call(
      {String? name,
      String? mobile,
      String? employeeID,
      dynamic warehouseID,
      DateTime? timestamp,
      int? status,
      List<String>? personType,
      int? isShow});
}

/// @nodoc
class _$EmployeeCopyWithImpl<$Res, $Val extends Employee>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? mobile = freezed,
    Object? employeeID = freezed,
    Object? warehouseID = freezed,
    Object? timestamp = freezed,
    Object? status = freezed,
    Object? personType = freezed,
    Object? isShow = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeID: freezed == employeeID
          ? _value.employeeID
          : employeeID // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouseID: freezed == warehouseID
          ? _value.warehouseID
          : warehouseID // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      personType: freezed == personType
          ? _value.personType
          : personType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isShow: freezed == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeImplCopyWith<$Res>
    implements $EmployeeCopyWith<$Res> {
  factory _$$EmployeeImplCopyWith(
          _$EmployeeImpl value, $Res Function(_$EmployeeImpl) then) =
      __$$EmployeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? mobile,
      String? employeeID,
      dynamic warehouseID,
      DateTime? timestamp,
      int? status,
      List<String>? personType,
      int? isShow});
}

/// @nodoc
class __$$EmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeCopyWithImpl<$Res, _$EmployeeImpl>
    implements _$$EmployeeImplCopyWith<$Res> {
  __$$EmployeeImplCopyWithImpl(
      _$EmployeeImpl _value, $Res Function(_$EmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? mobile = freezed,
    Object? employeeID = freezed,
    Object? warehouseID = freezed,
    Object? timestamp = freezed,
    Object? status = freezed,
    Object? personType = freezed,
    Object? isShow = freezed,
  }) {
    return _then(_$EmployeeImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeID: freezed == employeeID
          ? _value.employeeID
          : employeeID // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouseID: freezed == warehouseID
          ? _value.warehouseID
          : warehouseID // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      personType: freezed == personType
          ? _value._personType
          : personType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isShow: freezed == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeImpl implements _Employee {
  const _$EmployeeImpl(
      {this.name,
      this.mobile,
      this.employeeID,
      this.warehouseID,
      this.timestamp,
      this.status,
      final List<String>? personType,
      this.isShow})
      : _personType = personType;

  factory _$EmployeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeImplFromJson(json);

  @override
  final String? name;
  @override
  final String? mobile;
  @override
  final String? employeeID;
  @override
  final dynamic warehouseID;
  @override
  final DateTime? timestamp;
  @override
  final int? status;
  final List<String>? _personType;
  @override
  List<String>? get personType {
    final value = _personType;
    if (value == null) return null;
    if (_personType is EqualUnmodifiableListView) return _personType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? isShow;

  @override
  String toString() {
    return 'Employee(name: $name, mobile: $mobile, employeeID: $employeeID, warehouseID: $warehouseID, timestamp: $timestamp, status: $status, personType: $personType, isShow: $isShow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.employeeID, employeeID) ||
                other.employeeID == employeeID) &&
            const DeepCollectionEquality()
                .equals(other.warehouseID, warehouseID) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._personType, _personType) &&
            (identical(other.isShow, isShow) || other.isShow == isShow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      mobile,
      employeeID,
      const DeepCollectionEquality().hash(warehouseID),
      timestamp,
      status,
      const DeepCollectionEquality().hash(_personType),
      isShow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeImplCopyWith<_$EmployeeImpl> get copyWith =>
      __$$EmployeeImplCopyWithImpl<_$EmployeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeImplToJson(
      this,
    );
  }
}

abstract class _Employee implements Employee {
  const factory _Employee(
      {final String? name,
      final String? mobile,
      final String? employeeID,
      final dynamic warehouseID,
      final DateTime? timestamp,
      final int? status,
      final List<String>? personType,
      final int? isShow}) = _$EmployeeImpl;

  factory _Employee.fromJson(Map<String, dynamic> json) =
      _$EmployeeImpl.fromJson;

  @override
  String? get name;
  @override
  String? get mobile;
  @override
  String? get employeeID;
  @override
  dynamic get warehouseID;
  @override
  DateTime? get timestamp;
  @override
  int? get status;
  @override
  List<String>? get personType;
  @override
  int? get isShow;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeImplCopyWith<_$EmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
