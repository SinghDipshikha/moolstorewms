// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Warehouse _$WarehouseFromJson(Map<String, dynamic> json) {
  return _Warehouse.fromJson(json);
}

/// @nodoc
mixin _$Warehouse {
  dynamic get id => throw _privateConstructorUsedError;
  String? get warehouseName => throw _privateConstructorUsedError;
  String? get manageEmail => throw _privateConstructorUsedError;
  String? get warehouseManager => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  int? get noOfChambers => throw _privateConstructorUsedError;
  double? get totalCapacity => throw _privateConstructorUsedError;
  int? get noOfDocks => throw _privateConstructorUsedError;
  int? get noOfGates => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updateAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;
  String? get warehouseLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarehouseCopyWith<Warehouse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseCopyWith<$Res> {
  factory $WarehouseCopyWith(Warehouse value, $Res Function(Warehouse) then) =
      _$WarehouseCopyWithImpl<$Res, Warehouse>;
  @useResult
  $Res call(
      {dynamic id,
      String? warehouseName,
      String? manageEmail,
      String? warehouseManager,
      String? phone,
      String? countryCode,
      int? noOfChambers,
      double? totalCapacity,
      int? noOfDocks,
      int? noOfGates,
      int? status,
      DateTime? createdAt,
      DateTime? updateAt,
      DateTime? deletedAt,
      double? lat,
      double? lng,
      String? warehouseLocation});
}

/// @nodoc
class _$WarehouseCopyWithImpl<$Res, $Val extends Warehouse>
    implements $WarehouseCopyWith<$Res> {
  _$WarehouseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? warehouseName = freezed,
    Object? manageEmail = freezed,
    Object? warehouseManager = freezed,
    Object? phone = freezed,
    Object? countryCode = freezed,
    Object? noOfChambers = freezed,
    Object? totalCapacity = freezed,
    Object? noOfDocks = freezed,
    Object? noOfGates = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updateAt = freezed,
    Object? deletedAt = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? warehouseLocation = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      warehouseName: freezed == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String?,
      manageEmail: freezed == manageEmail
          ? _value.manageEmail
          : manageEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouseManager: freezed == warehouseManager
          ? _value.warehouseManager
          : warehouseManager // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfChambers: freezed == noOfChambers
          ? _value.noOfChambers
          : noOfChambers // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCapacity: freezed == totalCapacity
          ? _value.totalCapacity
          : totalCapacity // ignore: cast_nullable_to_non_nullable
              as double?,
      noOfDocks: freezed == noOfDocks
          ? _value.noOfDocks
          : noOfDocks // ignore: cast_nullable_to_non_nullable
              as int?,
      noOfGates: freezed == noOfGates
          ? _value.noOfGates
          : noOfGates // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      warehouseLocation: freezed == warehouseLocation
          ? _value.warehouseLocation
          : warehouseLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WarehouseImplCopyWith<$Res>
    implements $WarehouseCopyWith<$Res> {
  factory _$$WarehouseImplCopyWith(
          _$WarehouseImpl value, $Res Function(_$WarehouseImpl) then) =
      __$$WarehouseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String? warehouseName,
      String? manageEmail,
      String? warehouseManager,
      String? phone,
      String? countryCode,
      int? noOfChambers,
      double? totalCapacity,
      int? noOfDocks,
      int? noOfGates,
      int? status,
      DateTime? createdAt,
      DateTime? updateAt,
      DateTime? deletedAt,
      double? lat,
      double? lng,
      String? warehouseLocation});
}

/// @nodoc
class __$$WarehouseImplCopyWithImpl<$Res>
    extends _$WarehouseCopyWithImpl<$Res, _$WarehouseImpl>
    implements _$$WarehouseImplCopyWith<$Res> {
  __$$WarehouseImplCopyWithImpl(
      _$WarehouseImpl _value, $Res Function(_$WarehouseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? warehouseName = freezed,
    Object? manageEmail = freezed,
    Object? warehouseManager = freezed,
    Object? phone = freezed,
    Object? countryCode = freezed,
    Object? noOfChambers = freezed,
    Object? totalCapacity = freezed,
    Object? noOfDocks = freezed,
    Object? noOfGates = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updateAt = freezed,
    Object? deletedAt = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
    Object? warehouseLocation = freezed,
  }) {
    return _then(_$WarehouseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      warehouseName: freezed == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String?,
      manageEmail: freezed == manageEmail
          ? _value.manageEmail
          : manageEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouseManager: freezed == warehouseManager
          ? _value.warehouseManager
          : warehouseManager // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfChambers: freezed == noOfChambers
          ? _value.noOfChambers
          : noOfChambers // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCapacity: freezed == totalCapacity
          ? _value.totalCapacity
          : totalCapacity // ignore: cast_nullable_to_non_nullable
              as double?,
      noOfDocks: freezed == noOfDocks
          ? _value.noOfDocks
          : noOfDocks // ignore: cast_nullable_to_non_nullable
              as int?,
      noOfGates: freezed == noOfGates
          ? _value.noOfGates
          : noOfGates // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
      warehouseLocation: freezed == warehouseLocation
          ? _value.warehouseLocation
          : warehouseLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WarehouseImpl implements _Warehouse {
  const _$WarehouseImpl(
      {this.id,
      this.warehouseName,
      this.manageEmail,
      this.warehouseManager,
      this.phone,
      this.countryCode,
      this.noOfChambers,
      this.totalCapacity,
      this.noOfDocks,
      this.noOfGates,
      this.status,
      this.createdAt,
      this.updateAt,
      this.deletedAt,
      this.lat,
      this.lng,
      this.warehouseLocation});

  factory _$WarehouseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WarehouseImplFromJson(json);

  @override
  final dynamic id;
  @override
  final String? warehouseName;
  @override
  final String? manageEmail;
  @override
  final String? warehouseManager;
  @override
  final String? phone;
  @override
  final String? countryCode;
  @override
  final int? noOfChambers;
  @override
  final double? totalCapacity;
  @override
  final int? noOfDocks;
  @override
  final int? noOfGates;
  @override
  final int? status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updateAt;
  @override
  final DateTime? deletedAt;
  @override
  final double? lat;
  @override
  final double? lng;
  @override
  final String? warehouseLocation;

  @override
  String toString() {
    return 'Warehouse(id: $id, warehouseName: $warehouseName, manageEmail: $manageEmail, warehouseManager: $warehouseManager, phone: $phone, countryCode: $countryCode, noOfChambers: $noOfChambers, totalCapacity: $totalCapacity, noOfDocks: $noOfDocks, noOfGates: $noOfGates, status: $status, createdAt: $createdAt, updateAt: $updateAt, deletedAt: $deletedAt, lat: $lat, lng: $lng, warehouseLocation: $warehouseLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarehouseImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.warehouseName, warehouseName) ||
                other.warehouseName == warehouseName) &&
            (identical(other.manageEmail, manageEmail) ||
                other.manageEmail == manageEmail) &&
            (identical(other.warehouseManager, warehouseManager) ||
                other.warehouseManager == warehouseManager) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.noOfChambers, noOfChambers) ||
                other.noOfChambers == noOfChambers) &&
            (identical(other.totalCapacity, totalCapacity) ||
                other.totalCapacity == totalCapacity) &&
            (identical(other.noOfDocks, noOfDocks) ||
                other.noOfDocks == noOfDocks) &&
            (identical(other.noOfGates, noOfGates) ||
                other.noOfGates == noOfGates) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.warehouseLocation, warehouseLocation) ||
                other.warehouseLocation == warehouseLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      warehouseName,
      manageEmail,
      warehouseManager,
      phone,
      countryCode,
      noOfChambers,
      totalCapacity,
      noOfDocks,
      noOfGates,
      status,
      createdAt,
      updateAt,
      deletedAt,
      lat,
      lng,
      warehouseLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WarehouseImplCopyWith<_$WarehouseImpl> get copyWith =>
      __$$WarehouseImplCopyWithImpl<_$WarehouseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WarehouseImplToJson(
      this,
    );
  }
}

abstract class _Warehouse implements Warehouse {
  const factory _Warehouse(
      {final dynamic id,
      final String? warehouseName,
      final String? manageEmail,
      final String? warehouseManager,
      final String? phone,
      final String? countryCode,
      final int? noOfChambers,
      final double? totalCapacity,
      final int? noOfDocks,
      final int? noOfGates,
      final int? status,
      final DateTime? createdAt,
      final DateTime? updateAt,
      final DateTime? deletedAt,
      final double? lat,
      final double? lng,
      final String? warehouseLocation}) = _$WarehouseImpl;

  factory _Warehouse.fromJson(Map<String, dynamic> json) =
      _$WarehouseImpl.fromJson;

  @override
  dynamic get id;
  @override
  String? get warehouseName;
  @override
  String? get manageEmail;
  @override
  String? get warehouseManager;
  @override
  String? get phone;
  @override
  String? get countryCode;
  @override
  int? get noOfChambers;
  @override
  double? get totalCapacity;
  @override
  int? get noOfDocks;
  @override
  int? get noOfGates;
  @override
  int? get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updateAt;
  @override
  DateTime? get deletedAt;
  @override
  double? get lat;
  @override
  double? get lng;
  @override
  String? get warehouseLocation;
  @override
  @JsonKey(ignore: true)
  _$$WarehouseImplCopyWith<_$WarehouseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
