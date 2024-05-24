// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkInSubmit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckInModel _$CheckInModelFromJson(Map<String, dynamic> json) {
  return _CheckInModel.fromJson(json);
}

/// @nodoc
mixin _$CheckInModel {
  int? get seller_purchase_order_id => throw _privateConstructorUsedError;
  List<Map<String, int>>? get products => throw _privateConstructorUsedError;
  VehicleDetails? get vehicle_details => throw _privateConstructorUsedError;
  String? get checkin_type => throw _privateConstructorUsedError;
  int? get warehouse_id => throw _privateConstructorUsedError;
  DateTime? get expected_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckInModelCopyWith<CheckInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInModelCopyWith<$Res> {
  factory $CheckInModelCopyWith(
          CheckInModel value, $Res Function(CheckInModel) then) =
      _$CheckInModelCopyWithImpl<$Res, CheckInModel>;
  @useResult
  $Res call(
      {int? seller_purchase_order_id,
      List<Map<String, int>>? products,
      VehicleDetails? vehicle_details,
      String? checkin_type,
      int? warehouse_id,
      DateTime? expected_date});

  $VehicleDetailsCopyWith<$Res>? get vehicle_details;
}

/// @nodoc
class _$CheckInModelCopyWithImpl<$Res, $Val extends CheckInModel>
    implements $CheckInModelCopyWith<$Res> {
  _$CheckInModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seller_purchase_order_id = freezed,
    Object? products = freezed,
    Object? vehicle_details = freezed,
    Object? checkin_type = freezed,
    Object? warehouse_id = freezed,
    Object? expected_date = freezed,
  }) {
    return _then(_value.copyWith(
      seller_purchase_order_id: freezed == seller_purchase_order_id
          ? _value.seller_purchase_order_id
          : seller_purchase_order_id // ignore: cast_nullable_to_non_nullable
              as int?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Map<String, int>>?,
      vehicle_details: freezed == vehicle_details
          ? _value.vehicle_details
          : vehicle_details // ignore: cast_nullable_to_non_nullable
              as VehicleDetails?,
      checkin_type: freezed == checkin_type
          ? _value.checkin_type
          : checkin_type // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
      expected_date: freezed == expected_date
          ? _value.expected_date
          : expected_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleDetailsCopyWith<$Res>? get vehicle_details {
    if (_value.vehicle_details == null) {
      return null;
    }

    return $VehicleDetailsCopyWith<$Res>(_value.vehicle_details!, (value) {
      return _then(_value.copyWith(vehicle_details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckInModelImplCopyWith<$Res>
    implements $CheckInModelCopyWith<$Res> {
  factory _$$CheckInModelImplCopyWith(
          _$CheckInModelImpl value, $Res Function(_$CheckInModelImpl) then) =
      __$$CheckInModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? seller_purchase_order_id,
      List<Map<String, int>>? products,
      VehicleDetails? vehicle_details,
      String? checkin_type,
      int? warehouse_id,
      DateTime? expected_date});

  @override
  $VehicleDetailsCopyWith<$Res>? get vehicle_details;
}

/// @nodoc
class __$$CheckInModelImplCopyWithImpl<$Res>
    extends _$CheckInModelCopyWithImpl<$Res, _$CheckInModelImpl>
    implements _$$CheckInModelImplCopyWith<$Res> {
  __$$CheckInModelImplCopyWithImpl(
      _$CheckInModelImpl _value, $Res Function(_$CheckInModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seller_purchase_order_id = freezed,
    Object? products = freezed,
    Object? vehicle_details = freezed,
    Object? checkin_type = freezed,
    Object? warehouse_id = freezed,
    Object? expected_date = freezed,
  }) {
    return _then(_$CheckInModelImpl(
      seller_purchase_order_id: freezed == seller_purchase_order_id
          ? _value.seller_purchase_order_id
          : seller_purchase_order_id // ignore: cast_nullable_to_non_nullable
              as int?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Map<String, int>>?,
      vehicle_details: freezed == vehicle_details
          ? _value.vehicle_details
          : vehicle_details // ignore: cast_nullable_to_non_nullable
              as VehicleDetails?,
      checkin_type: freezed == checkin_type
          ? _value.checkin_type
          : checkin_type // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
      expected_date: freezed == expected_date
          ? _value.expected_date
          : expected_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckInModelImpl implements _CheckInModel {
  const _$CheckInModelImpl(
      {this.seller_purchase_order_id,
      final List<Map<String, int>>? products,
      this.vehicle_details,
      this.checkin_type,
      this.warehouse_id,
      this.expected_date})
      : _products = products;

  factory _$CheckInModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckInModelImplFromJson(json);

  @override
  final int? seller_purchase_order_id;
  final List<Map<String, int>>? _products;
  @override
  List<Map<String, int>>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final VehicleDetails? vehicle_details;
  @override
  final String? checkin_type;
  @override
  final int? warehouse_id;
  @override
  final DateTime? expected_date;

  @override
  String toString() {
    return 'CheckInModel(seller_purchase_order_id: $seller_purchase_order_id, products: $products, vehicle_details: $vehicle_details, checkin_type: $checkin_type, warehouse_id: $warehouse_id, expected_date: $expected_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInModelImpl &&
            (identical(
                    other.seller_purchase_order_id, seller_purchase_order_id) ||
                other.seller_purchase_order_id == seller_purchase_order_id) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.vehicle_details, vehicle_details) ||
                other.vehicle_details == vehicle_details) &&
            (identical(other.checkin_type, checkin_type) ||
                other.checkin_type == checkin_type) &&
            (identical(other.warehouse_id, warehouse_id) ||
                other.warehouse_id == warehouse_id) &&
            (identical(other.expected_date, expected_date) ||
                other.expected_date == expected_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      seller_purchase_order_id,
      const DeepCollectionEquality().hash(_products),
      vehicle_details,
      checkin_type,
      warehouse_id,
      expected_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInModelImplCopyWith<_$CheckInModelImpl> get copyWith =>
      __$$CheckInModelImplCopyWithImpl<_$CheckInModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckInModelImplToJson(
      this,
    );
  }
}

abstract class _CheckInModel implements CheckInModel {
  const factory _CheckInModel(
      {final int? seller_purchase_order_id,
      final List<Map<String, int>>? products,
      final VehicleDetails? vehicle_details,
      final String? checkin_type,
      final int? warehouse_id,
      final DateTime? expected_date}) = _$CheckInModelImpl;

  factory _CheckInModel.fromJson(Map<String, dynamic> json) =
      _$CheckInModelImpl.fromJson;

  @override
  int? get seller_purchase_order_id;
  @override
  List<Map<String, int>>? get products;
  @override
  VehicleDetails? get vehicle_details;
  @override
  String? get checkin_type;
  @override
  int? get warehouse_id;
  @override
  DateTime? get expected_date;
  @override
  @JsonKey(ignore: true)
  _$$CheckInModelImplCopyWith<_$CheckInModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VehicleDetails _$VehicleDetailsFromJson(Map<String, dynamic> json) {
  return _VehicleDetails.fromJson(json);
}

/// @nodoc
mixin _$VehicleDetails {
  String? get vehicle_type => throw _privateConstructorUsedError;
  String? get vehicle_number => throw _privateConstructorUsedError;
  String? get driver_name => throw _privateConstructorUsedError;
  String? get driver_ph_number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleDetailsCopyWith<VehicleDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleDetailsCopyWith<$Res> {
  factory $VehicleDetailsCopyWith(
          VehicleDetails value, $Res Function(VehicleDetails) then) =
      _$VehicleDetailsCopyWithImpl<$Res, VehicleDetails>;
  @useResult
  $Res call(
      {String? vehicle_type,
      String? vehicle_number,
      String? driver_name,
      String? driver_ph_number});
}

/// @nodoc
class _$VehicleDetailsCopyWithImpl<$Res, $Val extends VehicleDetails>
    implements $VehicleDetailsCopyWith<$Res> {
  _$VehicleDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle_type = freezed,
    Object? vehicle_number = freezed,
    Object? driver_name = freezed,
    Object? driver_ph_number = freezed,
  }) {
    return _then(_value.copyWith(
      vehicle_type: freezed == vehicle_type
          ? _value.vehicle_type
          : vehicle_type // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_number: freezed == vehicle_number
          ? _value.vehicle_number
          : vehicle_number // ignore: cast_nullable_to_non_nullable
              as String?,
      driver_name: freezed == driver_name
          ? _value.driver_name
          : driver_name // ignore: cast_nullable_to_non_nullable
              as String?,
      driver_ph_number: freezed == driver_ph_number
          ? _value.driver_ph_number
          : driver_ph_number // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleDetailsImplCopyWith<$Res>
    implements $VehicleDetailsCopyWith<$Res> {
  factory _$$VehicleDetailsImplCopyWith(_$VehicleDetailsImpl value,
          $Res Function(_$VehicleDetailsImpl) then) =
      __$$VehicleDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? vehicle_type,
      String? vehicle_number,
      String? driver_name,
      String? driver_ph_number});
}

/// @nodoc
class __$$VehicleDetailsImplCopyWithImpl<$Res>
    extends _$VehicleDetailsCopyWithImpl<$Res, _$VehicleDetailsImpl>
    implements _$$VehicleDetailsImplCopyWith<$Res> {
  __$$VehicleDetailsImplCopyWithImpl(
      _$VehicleDetailsImpl _value, $Res Function(_$VehicleDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle_type = freezed,
    Object? vehicle_number = freezed,
    Object? driver_name = freezed,
    Object? driver_ph_number = freezed,
  }) {
    return _then(_$VehicleDetailsImpl(
      vehicle_type: freezed == vehicle_type
          ? _value.vehicle_type
          : vehicle_type // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_number: freezed == vehicle_number
          ? _value.vehicle_number
          : vehicle_number // ignore: cast_nullable_to_non_nullable
              as String?,
      driver_name: freezed == driver_name
          ? _value.driver_name
          : driver_name // ignore: cast_nullable_to_non_nullable
              as String?,
      driver_ph_number: freezed == driver_ph_number
          ? _value.driver_ph_number
          : driver_ph_number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleDetailsImpl implements _VehicleDetails {
  const _$VehicleDetailsImpl(
      {this.vehicle_type,
      this.vehicle_number,
      this.driver_name,
      this.driver_ph_number});

  factory _$VehicleDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleDetailsImplFromJson(json);

  @override
  final String? vehicle_type;
  @override
  final String? vehicle_number;
  @override
  final String? driver_name;
  @override
  final String? driver_ph_number;

  @override
  String toString() {
    return 'VehicleDetails(vehicle_type: $vehicle_type, vehicle_number: $vehicle_number, driver_name: $driver_name, driver_ph_number: $driver_ph_number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleDetailsImpl &&
            (identical(other.vehicle_type, vehicle_type) ||
                other.vehicle_type == vehicle_type) &&
            (identical(other.vehicle_number, vehicle_number) ||
                other.vehicle_number == vehicle_number) &&
            (identical(other.driver_name, driver_name) ||
                other.driver_name == driver_name) &&
            (identical(other.driver_ph_number, driver_ph_number) ||
                other.driver_ph_number == driver_ph_number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, vehicle_type, vehicle_number, driver_name, driver_ph_number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleDetailsImplCopyWith<_$VehicleDetailsImpl> get copyWith =>
      __$$VehicleDetailsImplCopyWithImpl<_$VehicleDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleDetailsImplToJson(
      this,
    );
  }
}

abstract class _VehicleDetails implements VehicleDetails {
  const factory _VehicleDetails(
      {final String? vehicle_type,
      final String? vehicle_number,
      final String? driver_name,
      final String? driver_ph_number}) = _$VehicleDetailsImpl;

  factory _VehicleDetails.fromJson(Map<String, dynamic> json) =
      _$VehicleDetailsImpl.fromJson;

  @override
  String? get vehicle_type;
  @override
  String? get vehicle_number;
  @override
  String? get driver_name;
  @override
  String? get driver_ph_number;
  @override
  @JsonKey(ignore: true)
  _$$VehicleDetailsImplCopyWith<_$VehicleDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
