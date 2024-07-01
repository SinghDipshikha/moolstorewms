// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VehicleEntry _$VehicleEntryFromJson(Map<String, dynamic> json) {
  return _GetAllVehicleEntryBySecurityGaurd.fromJson(json);
}

/// @nodoc
mixin _$VehicleEntry {
  int? get id => throw _privateConstructorUsedError;
  String? get driver_name => throw _privateConstructorUsedError;
  String? get driver_phone => throw _privateConstructorUsedError;
  String? get vehicle_number => throw _privateConstructorUsedError;
  String? get vehicle_types => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleEntryCopyWith<VehicleEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleEntryCopyWith<$Res> {
  factory $VehicleEntryCopyWith(
          VehicleEntry value, $Res Function(VehicleEntry) then) =
      _$VehicleEntryCopyWithImpl<$Res, VehicleEntry>;
  @useResult
  $Res call(
      {int? id,
      String? driver_name,
      String? driver_phone,
      String? vehicle_number,
      String? vehicle_types,
      dynamic status,
      DateTime? created_at});
}

/// @nodoc
class _$VehicleEntryCopyWithImpl<$Res, $Val extends VehicleEntry>
    implements $VehicleEntryCopyWith<$Res> {
  _$VehicleEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? driver_name = freezed,
    Object? driver_phone = freezed,
    Object? vehicle_number = freezed,
    Object? vehicle_types = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      driver_name: freezed == driver_name
          ? _value.driver_name
          : driver_name // ignore: cast_nullable_to_non_nullable
              as String?,
      driver_phone: freezed == driver_phone
          ? _value.driver_phone
          : driver_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_number: freezed == vehicle_number
          ? _value.vehicle_number
          : vehicle_number // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_types: freezed == vehicle_types
          ? _value.vehicle_types
          : vehicle_types // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllVehicleEntryBySecurityGaurdImplCopyWith<$Res>
    implements $VehicleEntryCopyWith<$Res> {
  factory _$$GetAllVehicleEntryBySecurityGaurdImplCopyWith(
          _$GetAllVehicleEntryBySecurityGaurdImpl value,
          $Res Function(_$GetAllVehicleEntryBySecurityGaurdImpl) then) =
      __$$GetAllVehicleEntryBySecurityGaurdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? driver_name,
      String? driver_phone,
      String? vehicle_number,
      String? vehicle_types,
      dynamic status,
      DateTime? created_at});
}

/// @nodoc
class __$$GetAllVehicleEntryBySecurityGaurdImplCopyWithImpl<$Res>
    extends _$VehicleEntryCopyWithImpl<$Res,
        _$GetAllVehicleEntryBySecurityGaurdImpl>
    implements _$$GetAllVehicleEntryBySecurityGaurdImplCopyWith<$Res> {
  __$$GetAllVehicleEntryBySecurityGaurdImplCopyWithImpl(
      _$GetAllVehicleEntryBySecurityGaurdImpl _value,
      $Res Function(_$GetAllVehicleEntryBySecurityGaurdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? driver_name = freezed,
    Object? driver_phone = freezed,
    Object? vehicle_number = freezed,
    Object? vehicle_types = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_$GetAllVehicleEntryBySecurityGaurdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      driver_name: freezed == driver_name
          ? _value.driver_name
          : driver_name // ignore: cast_nullable_to_non_nullable
              as String?,
      driver_phone: freezed == driver_phone
          ? _value.driver_phone
          : driver_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_number: freezed == vehicle_number
          ? _value.vehicle_number
          : vehicle_number // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_types: freezed == vehicle_types
          ? _value.vehicle_types
          : vehicle_types // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllVehicleEntryBySecurityGaurdImpl
    implements _GetAllVehicleEntryBySecurityGaurd {
  const _$GetAllVehicleEntryBySecurityGaurdImpl(
      {this.id,
      this.driver_name,
      this.driver_phone,
      this.vehicle_number,
      this.vehicle_types,
      this.status,
      this.created_at});

  factory _$GetAllVehicleEntryBySecurityGaurdImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllVehicleEntryBySecurityGaurdImplFromJson(json);

  @override
  final int? id;
  @override
  final String? driver_name;
  @override
  final String? driver_phone;
  @override
  final String? vehicle_number;
  @override
  final String? vehicle_types;
  @override
  final dynamic status;
  @override
  final DateTime? created_at;

  @override
  String toString() {
    return 'VehicleEntry(id: $id, driver_name: $driver_name, driver_phone: $driver_phone, vehicle_number: $vehicle_number, vehicle_types: $vehicle_types, status: $status, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllVehicleEntryBySecurityGaurdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.driver_name, driver_name) ||
                other.driver_name == driver_name) &&
            (identical(other.driver_phone, driver_phone) ||
                other.driver_phone == driver_phone) &&
            (identical(other.vehicle_number, vehicle_number) ||
                other.vehicle_number == vehicle_number) &&
            (identical(other.vehicle_types, vehicle_types) ||
                other.vehicle_types == vehicle_types) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      driver_name,
      driver_phone,
      vehicle_number,
      vehicle_types,
      const DeepCollectionEquality().hash(status),
      created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllVehicleEntryBySecurityGaurdImplCopyWith<
          _$GetAllVehicleEntryBySecurityGaurdImpl>
      get copyWith => __$$GetAllVehicleEntryBySecurityGaurdImplCopyWithImpl<
          _$GetAllVehicleEntryBySecurityGaurdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllVehicleEntryBySecurityGaurdImplToJson(
      this,
    );
  }
}

abstract class _GetAllVehicleEntryBySecurityGaurd implements VehicleEntry {
  const factory _GetAllVehicleEntryBySecurityGaurd(
      {final int? id,
      final String? driver_name,
      final String? driver_phone,
      final String? vehicle_number,
      final String? vehicle_types,
      final dynamic status,
      final DateTime? created_at}) = _$GetAllVehicleEntryBySecurityGaurdImpl;

  factory _GetAllVehicleEntryBySecurityGaurd.fromJson(
          Map<String, dynamic> json) =
      _$GetAllVehicleEntryBySecurityGaurdImpl.fromJson;

  @override
  int? get id;
  @override
  String? get driver_name;
  @override
  String? get driver_phone;
  @override
  String? get vehicle_number;
  @override
  String? get vehicle_types;
  @override
  dynamic get status;
  @override
  DateTime? get created_at;
  @override
  @JsonKey(ignore: true)
  _$$GetAllVehicleEntryBySecurityGaurdImplCopyWith<
          _$GetAllVehicleEntryBySecurityGaurdImpl>
      get copyWith => throw _privateConstructorUsedError;
}
