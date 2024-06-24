// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'indentInSubmit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IndentInModel _$IndentInModelFromJson(Map<String, dynamic> json) {
  return _IndentInModel.fromJson(json);
}

/// @nodoc
mixin _$IndentInModel {
  int get user_id => throw _privateConstructorUsedError;
  int? get customer_id => throw _privateConstructorUsedError;
  List<EnterProduct>? get products => throw _privateConstructorUsedError;
  VehicleDetails? get vehicle_details => throw _privateConstructorUsedError;
  String? get order_number => throw _privateConstructorUsedError;
  int? get warehouse_id => throw _privateConstructorUsedError;
  int? get min_temperature => throw _privateConstructorUsedError;
  int? get max_temperature => throw _privateConstructorUsedError;
  DateTime? get expected_date => throw _privateConstructorUsedError;
  String get temperature_unit => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndentInModelCopyWith<IndentInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndentInModelCopyWith<$Res> {
  factory $IndentInModelCopyWith(
          IndentInModel value, $Res Function(IndentInModel) then) =
      _$IndentInModelCopyWithImpl<$Res, IndentInModel>;
  @useResult
  $Res call(
      {int user_id,
      int? customer_id,
      List<EnterProduct>? products,
      VehicleDetails? vehicle_details,
      String? order_number,
      int? warehouse_id,
      int? min_temperature,
      int? max_temperature,
      DateTime? expected_date,
      String temperature_unit,
      String status});

  $VehicleDetailsCopyWith<$Res>? get vehicle_details;
}

/// @nodoc
class _$IndentInModelCopyWithImpl<$Res, $Val extends IndentInModel>
    implements $IndentInModelCopyWith<$Res> {
  _$IndentInModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = null,
    Object? customer_id = freezed,
    Object? products = freezed,
    Object? vehicle_details = freezed,
    Object? order_number = freezed,
    Object? warehouse_id = freezed,
    Object? min_temperature = freezed,
    Object? max_temperature = freezed,
    Object? expected_date = freezed,
    Object? temperature_unit = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      customer_id: freezed == customer_id
          ? _value.customer_id
          : customer_id // ignore: cast_nullable_to_non_nullable
              as int?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<EnterProduct>?,
      vehicle_details: freezed == vehicle_details
          ? _value.vehicle_details
          : vehicle_details // ignore: cast_nullable_to_non_nullable
              as VehicleDetails?,
      order_number: freezed == order_number
          ? _value.order_number
          : order_number // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
      min_temperature: freezed == min_temperature
          ? _value.min_temperature
          : min_temperature // ignore: cast_nullable_to_non_nullable
              as int?,
      max_temperature: freezed == max_temperature
          ? _value.max_temperature
          : max_temperature // ignore: cast_nullable_to_non_nullable
              as int?,
      expected_date: freezed == expected_date
          ? _value.expected_date
          : expected_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      temperature_unit: null == temperature_unit
          ? _value.temperature_unit
          : temperature_unit // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$IndentInModelImplCopyWith<$Res>
    implements $IndentInModelCopyWith<$Res> {
  factory _$$IndentInModelImplCopyWith(
          _$IndentInModelImpl value, $Res Function(_$IndentInModelImpl) then) =
      __$$IndentInModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int user_id,
      int? customer_id,
      List<EnterProduct>? products,
      VehicleDetails? vehicle_details,
      String? order_number,
      int? warehouse_id,
      int? min_temperature,
      int? max_temperature,
      DateTime? expected_date,
      String temperature_unit,
      String status});

  @override
  $VehicleDetailsCopyWith<$Res>? get vehicle_details;
}

/// @nodoc
class __$$IndentInModelImplCopyWithImpl<$Res>
    extends _$IndentInModelCopyWithImpl<$Res, _$IndentInModelImpl>
    implements _$$IndentInModelImplCopyWith<$Res> {
  __$$IndentInModelImplCopyWithImpl(
      _$IndentInModelImpl _value, $Res Function(_$IndentInModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_id = null,
    Object? customer_id = freezed,
    Object? products = freezed,
    Object? vehicle_details = freezed,
    Object? order_number = freezed,
    Object? warehouse_id = freezed,
    Object? min_temperature = freezed,
    Object? max_temperature = freezed,
    Object? expected_date = freezed,
    Object? temperature_unit = null,
    Object? status = null,
  }) {
    return _then(_$IndentInModelImpl(
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      customer_id: freezed == customer_id
          ? _value.customer_id
          : customer_id // ignore: cast_nullable_to_non_nullable
              as int?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<EnterProduct>?,
      vehicle_details: freezed == vehicle_details
          ? _value.vehicle_details
          : vehicle_details // ignore: cast_nullable_to_non_nullable
              as VehicleDetails?,
      order_number: freezed == order_number
          ? _value.order_number
          : order_number // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
      min_temperature: freezed == min_temperature
          ? _value.min_temperature
          : min_temperature // ignore: cast_nullable_to_non_nullable
              as int?,
      max_temperature: freezed == max_temperature
          ? _value.max_temperature
          : max_temperature // ignore: cast_nullable_to_non_nullable
              as int?,
      expected_date: freezed == expected_date
          ? _value.expected_date
          : expected_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      temperature_unit: null == temperature_unit
          ? _value.temperature_unit
          : temperature_unit // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndentInModelImpl implements _IndentInModel {
  const _$IndentInModelImpl(
      {required this.user_id,
      this.customer_id,
      final List<EnterProduct>? products,
      this.vehicle_details,
      this.order_number,
      this.warehouse_id,
      this.min_temperature,
      this.max_temperature,
      this.expected_date,
      required this.temperature_unit,
      required this.status})
      : _products = products;

  factory _$IndentInModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndentInModelImplFromJson(json);

  @override
  final int user_id;
  @override
  final int? customer_id;
  final List<EnterProduct>? _products;
  @override
  List<EnterProduct>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final VehicleDetails? vehicle_details;
  @override
  final String? order_number;
  @override
  final int? warehouse_id;
  @override
  final int? min_temperature;
  @override
  final int? max_temperature;
  @override
  final DateTime? expected_date;
  @override
  final String temperature_unit;
  @override
  final String status;

  @override
  String toString() {
    return 'IndentInModel(user_id: $user_id, customer_id: $customer_id, products: $products, vehicle_details: $vehicle_details, order_number: $order_number, warehouse_id: $warehouse_id, min_temperature: $min_temperature, max_temperature: $max_temperature, expected_date: $expected_date, temperature_unit: $temperature_unit, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndentInModelImpl &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.customer_id, customer_id) ||
                other.customer_id == customer_id) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.vehicle_details, vehicle_details) ||
                other.vehicle_details == vehicle_details) &&
            (identical(other.order_number, order_number) ||
                other.order_number == order_number) &&
            (identical(other.warehouse_id, warehouse_id) ||
                other.warehouse_id == warehouse_id) &&
            (identical(other.min_temperature, min_temperature) ||
                other.min_temperature == min_temperature) &&
            (identical(other.max_temperature, max_temperature) ||
                other.max_temperature == max_temperature) &&
            (identical(other.expected_date, expected_date) ||
                other.expected_date == expected_date) &&
            (identical(other.temperature_unit, temperature_unit) ||
                other.temperature_unit == temperature_unit) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user_id,
      customer_id,
      const DeepCollectionEquality().hash(_products),
      vehicle_details,
      order_number,
      warehouse_id,
      min_temperature,
      max_temperature,
      expected_date,
      temperature_unit,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndentInModelImplCopyWith<_$IndentInModelImpl> get copyWith =>
      __$$IndentInModelImplCopyWithImpl<_$IndentInModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndentInModelImplToJson(
      this,
    );
  }
}

abstract class _IndentInModel implements IndentInModel {
  const factory _IndentInModel(
      {required final int user_id,
      final int? customer_id,
      final List<EnterProduct>? products,
      final VehicleDetails? vehicle_details,
      final String? order_number,
      final int? warehouse_id,
      final int? min_temperature,
      final int? max_temperature,
      final DateTime? expected_date,
      required final String temperature_unit,
      required final String status}) = _$IndentInModelImpl;

  factory _IndentInModel.fromJson(Map<String, dynamic> json) =
      _$IndentInModelImpl.fromJson;

  @override
  int get user_id;
  @override
  int? get customer_id;
  @override
  List<EnterProduct>? get products;
  @override
  VehicleDetails? get vehicle_details;
  @override
  String? get order_number;
  @override
  int? get warehouse_id;
  @override
  int? get min_temperature;
  @override
  int? get max_temperature;
  @override
  DateTime? get expected_date;
  @override
  String get temperature_unit;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$IndentInModelImplCopyWith<_$IndentInModelImpl> get copyWith =>
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
  DateTime? get expected_date => throw _privateConstructorUsedError;

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
      String? driver_ph_number,
      DateTime? expected_date});
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
    Object? expected_date = freezed,
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
      expected_date: freezed == expected_date
          ? _value.expected_date
          : expected_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      String? driver_ph_number,
      DateTime? expected_date});
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
    Object? expected_date = freezed,
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
      expected_date: freezed == expected_date
          ? _value.expected_date
          : expected_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      this.driver_ph_number,
      this.expected_date});

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
  final DateTime? expected_date;

  @override
  String toString() {
    return 'VehicleDetails(vehicle_type: $vehicle_type, vehicle_number: $vehicle_number, driver_name: $driver_name, driver_ph_number: $driver_ph_number, expected_date: $expected_date)';
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
                other.driver_ph_number == driver_ph_number) &&
            (identical(other.expected_date, expected_date) ||
                other.expected_date == expected_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vehicle_type, vehicle_number,
      driver_name, driver_ph_number, expected_date);

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
      final String? driver_ph_number,
      final DateTime? expected_date}) = _$VehicleDetailsImpl;

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
  DateTime? get expected_date;
  @override
  @JsonKey(ignore: true)
  _$$VehicleDetailsImplCopyWith<_$VehicleDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
