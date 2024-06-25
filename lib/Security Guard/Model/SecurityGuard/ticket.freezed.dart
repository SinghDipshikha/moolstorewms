// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketSG _$TicketSGFromJson(Map<String, dynamic> json) {
  return _TicketSG.fromJson(json);
}

/// @nodoc
mixin _$TicketSG {
  String? get indent_number => throw _privateConstructorUsedError;
  int? get ticket_generate_by => throw _privateConstructorUsedError;
  String? get employee_id => throw _privateConstructorUsedError;
  String? get visitor_name => throw _privateConstructorUsedError;
  String? get visitor_ph_number => throw _privateConstructorUsedError;
  String? get does_have_vehicle => throw _privateConstructorUsedError;
  String? get vehicle_number => throw _privateConstructorUsedError;
  String? get vehicle_types => throw _privateConstructorUsedError;
  String? get material_inside => throw _privateConstructorUsedError;
  String? get products => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get warehouse_id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  List<ProductEntry>? get product_details => throw _privateConstructorUsedError;
  List<VehicleEntry>? get vehicle_details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketSGCopyWith<TicketSG> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketSGCopyWith<$Res> {
  factory $TicketSGCopyWith(TicketSG value, $Res Function(TicketSG) then) =
      _$TicketSGCopyWithImpl<$Res, TicketSG>;
  @useResult
  $Res call(
      {String? indent_number,
      int? ticket_generate_by,
      String? employee_id,
      String? visitor_name,
      String? visitor_ph_number,
      String? does_have_vehicle,
      String? vehicle_number,
      String? vehicle_types,
      String? material_inside,
      String? products,
      String? status,
      int? warehouse_id,
      DateTime? created_at,
      List<ProductEntry>? product_details,
      List<VehicleEntry>? vehicle_details});
}

/// @nodoc
class _$TicketSGCopyWithImpl<$Res, $Val extends TicketSG>
    implements $TicketSGCopyWith<$Res> {
  _$TicketSGCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indent_number = freezed,
    Object? ticket_generate_by = freezed,
    Object? employee_id = freezed,
    Object? visitor_name = freezed,
    Object? visitor_ph_number = freezed,
    Object? does_have_vehicle = freezed,
    Object? vehicle_number = freezed,
    Object? vehicle_types = freezed,
    Object? material_inside = freezed,
    Object? products = freezed,
    Object? status = freezed,
    Object? warehouse_id = freezed,
    Object? created_at = freezed,
    Object? product_details = freezed,
    Object? vehicle_details = freezed,
  }) {
    return _then(_value.copyWith(
      indent_number: freezed == indent_number
          ? _value.indent_number
          : indent_number // ignore: cast_nullable_to_non_nullable
              as String?,
      ticket_generate_by: freezed == ticket_generate_by
          ? _value.ticket_generate_by
          : ticket_generate_by // ignore: cast_nullable_to_non_nullable
              as int?,
      employee_id: freezed == employee_id
          ? _value.employee_id
          : employee_id // ignore: cast_nullable_to_non_nullable
              as String?,
      visitor_name: freezed == visitor_name
          ? _value.visitor_name
          : visitor_name // ignore: cast_nullable_to_non_nullable
              as String?,
      visitor_ph_number: freezed == visitor_ph_number
          ? _value.visitor_ph_number
          : visitor_ph_number // ignore: cast_nullable_to_non_nullable
              as String?,
      does_have_vehicle: freezed == does_have_vehicle
          ? _value.does_have_vehicle
          : does_have_vehicle // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_number: freezed == vehicle_number
          ? _value.vehicle_number
          : vehicle_number // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_types: freezed == vehicle_types
          ? _value.vehicle_types
          : vehicle_types // ignore: cast_nullable_to_non_nullable
              as String?,
      material_inside: freezed == material_inside
          ? _value.material_inside
          : material_inside // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      product_details: freezed == product_details
          ? _value.product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as List<ProductEntry>?,
      vehicle_details: freezed == vehicle_details
          ? _value.vehicle_details
          : vehicle_details // ignore: cast_nullable_to_non_nullable
              as List<VehicleEntry>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketSGImplCopyWith<$Res>
    implements $TicketSGCopyWith<$Res> {
  factory _$$TicketSGImplCopyWith(
          _$TicketSGImpl value, $Res Function(_$TicketSGImpl) then) =
      __$$TicketSGImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? indent_number,
      int? ticket_generate_by,
      String? employee_id,
      String? visitor_name,
      String? visitor_ph_number,
      String? does_have_vehicle,
      String? vehicle_number,
      String? vehicle_types,
      String? material_inside,
      String? products,
      String? status,
      int? warehouse_id,
      DateTime? created_at,
      List<ProductEntry>? product_details,
      List<VehicleEntry>? vehicle_details});
}

/// @nodoc
class __$$TicketSGImplCopyWithImpl<$Res>
    extends _$TicketSGCopyWithImpl<$Res, _$TicketSGImpl>
    implements _$$TicketSGImplCopyWith<$Res> {
  __$$TicketSGImplCopyWithImpl(
      _$TicketSGImpl _value, $Res Function(_$TicketSGImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indent_number = freezed,
    Object? ticket_generate_by = freezed,
    Object? employee_id = freezed,
    Object? visitor_name = freezed,
    Object? visitor_ph_number = freezed,
    Object? does_have_vehicle = freezed,
    Object? vehicle_number = freezed,
    Object? vehicle_types = freezed,
    Object? material_inside = freezed,
    Object? products = freezed,
    Object? status = freezed,
    Object? warehouse_id = freezed,
    Object? created_at = freezed,
    Object? product_details = freezed,
    Object? vehicle_details = freezed,
  }) {
    return _then(_$TicketSGImpl(
      indent_number: freezed == indent_number
          ? _value.indent_number
          : indent_number // ignore: cast_nullable_to_non_nullable
              as String?,
      ticket_generate_by: freezed == ticket_generate_by
          ? _value.ticket_generate_by
          : ticket_generate_by // ignore: cast_nullable_to_non_nullable
              as int?,
      employee_id: freezed == employee_id
          ? _value.employee_id
          : employee_id // ignore: cast_nullable_to_non_nullable
              as String?,
      visitor_name: freezed == visitor_name
          ? _value.visitor_name
          : visitor_name // ignore: cast_nullable_to_non_nullable
              as String?,
      visitor_ph_number: freezed == visitor_ph_number
          ? _value.visitor_ph_number
          : visitor_ph_number // ignore: cast_nullable_to_non_nullable
              as String?,
      does_have_vehicle: freezed == does_have_vehicle
          ? _value.does_have_vehicle
          : does_have_vehicle // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_number: freezed == vehicle_number
          ? _value.vehicle_number
          : vehicle_number // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_types: freezed == vehicle_types
          ? _value.vehicle_types
          : vehicle_types // ignore: cast_nullable_to_non_nullable
              as String?,
      material_inside: freezed == material_inside
          ? _value.material_inside
          : material_inside // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      product_details: freezed == product_details
          ? _value._product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as List<ProductEntry>?,
      vehicle_details: freezed == vehicle_details
          ? _value._vehicle_details
          : vehicle_details // ignore: cast_nullable_to_non_nullable
              as List<VehicleEntry>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketSGImpl implements _TicketSG {
  const _$TicketSGImpl(
      {this.indent_number,
      this.ticket_generate_by,
      this.employee_id,
      this.visitor_name,
      this.visitor_ph_number,
      this.does_have_vehicle,
      this.vehicle_number,
      this.vehicle_types,
      this.material_inside,
      this.products,
      this.status,
      this.warehouse_id,
      this.created_at,
      final List<ProductEntry>? product_details,
      final List<VehicleEntry>? vehicle_details})
      : _product_details = product_details,
        _vehicle_details = vehicle_details;

  factory _$TicketSGImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketSGImplFromJson(json);

  @override
  final String? indent_number;
  @override
  final int? ticket_generate_by;
  @override
  final String? employee_id;
  @override
  final String? visitor_name;
  @override
  final String? visitor_ph_number;
  @override
  final String? does_have_vehicle;
  @override
  final String? vehicle_number;
  @override
  final String? vehicle_types;
  @override
  final String? material_inside;
  @override
  final String? products;
  @override
  final String? status;
  @override
  final int? warehouse_id;
  @override
  final DateTime? created_at;
  final List<ProductEntry>? _product_details;
  @override
  List<ProductEntry>? get product_details {
    final value = _product_details;
    if (value == null) return null;
    if (_product_details is EqualUnmodifiableListView) return _product_details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VehicleEntry>? _vehicle_details;
  @override
  List<VehicleEntry>? get vehicle_details {
    final value = _vehicle_details;
    if (value == null) return null;
    if (_vehicle_details is EqualUnmodifiableListView) return _vehicle_details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TicketSG(indent_number: $indent_number, ticket_generate_by: $ticket_generate_by, employee_id: $employee_id, visitor_name: $visitor_name, visitor_ph_number: $visitor_ph_number, does_have_vehicle: $does_have_vehicle, vehicle_number: $vehicle_number, vehicle_types: $vehicle_types, material_inside: $material_inside, products: $products, status: $status, warehouse_id: $warehouse_id, created_at: $created_at, product_details: $product_details, vehicle_details: $vehicle_details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketSGImpl &&
            (identical(other.indent_number, indent_number) ||
                other.indent_number == indent_number) &&
            (identical(other.ticket_generate_by, ticket_generate_by) ||
                other.ticket_generate_by == ticket_generate_by) &&
            (identical(other.employee_id, employee_id) ||
                other.employee_id == employee_id) &&
            (identical(other.visitor_name, visitor_name) ||
                other.visitor_name == visitor_name) &&
            (identical(other.visitor_ph_number, visitor_ph_number) ||
                other.visitor_ph_number == visitor_ph_number) &&
            (identical(other.does_have_vehicle, does_have_vehicle) ||
                other.does_have_vehicle == does_have_vehicle) &&
            (identical(other.vehicle_number, vehicle_number) ||
                other.vehicle_number == vehicle_number) &&
            (identical(other.vehicle_types, vehicle_types) ||
                other.vehicle_types == vehicle_types) &&
            (identical(other.material_inside, material_inside) ||
                other.material_inside == material_inside) &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.warehouse_id, warehouse_id) ||
                other.warehouse_id == warehouse_id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            const DeepCollectionEquality()
                .equals(other._product_details, _product_details) &&
            const DeepCollectionEquality()
                .equals(other._vehicle_details, _vehicle_details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      indent_number,
      ticket_generate_by,
      employee_id,
      visitor_name,
      visitor_ph_number,
      does_have_vehicle,
      vehicle_number,
      vehicle_types,
      material_inside,
      products,
      status,
      warehouse_id,
      created_at,
      const DeepCollectionEquality().hash(_product_details),
      const DeepCollectionEquality().hash(_vehicle_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketSGImplCopyWith<_$TicketSGImpl> get copyWith =>
      __$$TicketSGImplCopyWithImpl<_$TicketSGImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketSGImplToJson(
      this,
    );
  }
}

abstract class _TicketSG implements TicketSG {
  const factory _TicketSG(
      {final String? indent_number,
      final int? ticket_generate_by,
      final String? employee_id,
      final String? visitor_name,
      final String? visitor_ph_number,
      final String? does_have_vehicle,
      final String? vehicle_number,
      final String? vehicle_types,
      final String? material_inside,
      final String? products,
      final String? status,
      final int? warehouse_id,
      final DateTime? created_at,
      final List<ProductEntry>? product_details,
      final List<VehicleEntry>? vehicle_details}) = _$TicketSGImpl;

  factory _TicketSG.fromJson(Map<String, dynamic> json) =
      _$TicketSGImpl.fromJson;

  @override
  String? get indent_number;
  @override
  int? get ticket_generate_by;
  @override
  String? get employee_id;
  @override
  String? get visitor_name;
  @override
  String? get visitor_ph_number;
  @override
  String? get does_have_vehicle;
  @override
  String? get vehicle_number;
  @override
  String? get vehicle_types;
  @override
  String? get material_inside;
  @override
  String? get products;
  @override
  String? get status;
  @override
  int? get warehouse_id;
  @override
  DateTime? get created_at;
  @override
  List<ProductEntry>? get product_details;
  @override
  List<VehicleEntry>? get vehicle_details;
  @override
  @JsonKey(ignore: true)
  _$$TicketSGImplCopyWith<_$TicketSGImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketSL _$TicketSLFromJson(Map<String, dynamic> json) {
  return _TicketSL.fromJson(json);
}

/// @nodoc
mixin _$TicketSL {
  int? get id => throw _privateConstructorUsedError;
  String? get indent_number => throw _privateConstructorUsedError;
  String? get order_number => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  int? get warehouse_id => throw _privateConstructorUsedError;
  int? get min_temperature => throw _privateConstructorUsedError;
  int? get max_temperature => throw _privateConstructorUsedError;
  String? get warehouse_name => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  dynamic get last_name => throw _privateConstructorUsedError;
  String? get personType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<String>? get designation => throw _privateConstructorUsedError;
  List<ProductEntry>? get product_details => throw _privateConstructorUsedError;
  List<VehicleEntry>? get vehicle_details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketSLCopyWith<TicketSL> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketSLCopyWith<$Res> {
  factory $TicketSLCopyWith(TicketSL value, $Res Function(TicketSL) then) =
      _$TicketSLCopyWithImpl<$Res, TicketSL>;
  @useResult
  $Res call(
      {int? id,
      String? indent_number,
      String? order_number,
      DateTime? created_at,
      int? warehouse_id,
      int? min_temperature,
      int? max_temperature,
      String? warehouse_name,
      String? first_name,
      dynamic last_name,
      String? personType,
      String? name,
      List<String>? designation,
      List<ProductEntry>? product_details,
      List<VehicleEntry>? vehicle_details});
}

/// @nodoc
class _$TicketSLCopyWithImpl<$Res, $Val extends TicketSL>
    implements $TicketSLCopyWith<$Res> {
  _$TicketSLCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? indent_number = freezed,
    Object? order_number = freezed,
    Object? created_at = freezed,
    Object? warehouse_id = freezed,
    Object? min_temperature = freezed,
    Object? max_temperature = freezed,
    Object? warehouse_name = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? personType = freezed,
    Object? name = freezed,
    Object? designation = freezed,
    Object? product_details = freezed,
    Object? vehicle_details = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      indent_number: freezed == indent_number
          ? _value.indent_number
          : indent_number // ignore: cast_nullable_to_non_nullable
              as String?,
      order_number: freezed == order_number
          ? _value.order_number
          : order_number // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      warehouse_name: freezed == warehouse_name
          ? _value.warehouse_name
          : warehouse_name // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      personType: freezed == personType
          ? _value.personType
          : personType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      product_details: freezed == product_details
          ? _value.product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as List<ProductEntry>?,
      vehicle_details: freezed == vehicle_details
          ? _value.vehicle_details
          : vehicle_details // ignore: cast_nullable_to_non_nullable
              as List<VehicleEntry>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketSLImplCopyWith<$Res>
    implements $TicketSLCopyWith<$Res> {
  factory _$$TicketSLImplCopyWith(
          _$TicketSLImpl value, $Res Function(_$TicketSLImpl) then) =
      __$$TicketSLImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? indent_number,
      String? order_number,
      DateTime? created_at,
      int? warehouse_id,
      int? min_temperature,
      int? max_temperature,
      String? warehouse_name,
      String? first_name,
      dynamic last_name,
      String? personType,
      String? name,
      List<String>? designation,
      List<ProductEntry>? product_details,
      List<VehicleEntry>? vehicle_details});
}

/// @nodoc
class __$$TicketSLImplCopyWithImpl<$Res>
    extends _$TicketSLCopyWithImpl<$Res, _$TicketSLImpl>
    implements _$$TicketSLImplCopyWith<$Res> {
  __$$TicketSLImplCopyWithImpl(
      _$TicketSLImpl _value, $Res Function(_$TicketSLImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? indent_number = freezed,
    Object? order_number = freezed,
    Object? created_at = freezed,
    Object? warehouse_id = freezed,
    Object? min_temperature = freezed,
    Object? max_temperature = freezed,
    Object? warehouse_name = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? personType = freezed,
    Object? name = freezed,
    Object? designation = freezed,
    Object? product_details = freezed,
    Object? vehicle_details = freezed,
  }) {
    return _then(_$TicketSLImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      indent_number: freezed == indent_number
          ? _value.indent_number
          : indent_number // ignore: cast_nullable_to_non_nullable
              as String?,
      order_number: freezed == order_number
          ? _value.order_number
          : order_number // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      warehouse_name: freezed == warehouse_name
          ? _value.warehouse_name
          : warehouse_name // ignore: cast_nullable_to_non_nullable
              as String?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      personType: freezed == personType
          ? _value.personType
          : personType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value._designation
          : designation // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      product_details: freezed == product_details
          ? _value._product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as List<ProductEntry>?,
      vehicle_details: freezed == vehicle_details
          ? _value._vehicle_details
          : vehicle_details // ignore: cast_nullable_to_non_nullable
              as List<VehicleEntry>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketSLImpl implements _TicketSL {
  const _$TicketSLImpl(
      {this.id,
      this.indent_number,
      this.order_number,
      this.created_at,
      this.warehouse_id,
      this.min_temperature,
      this.max_temperature,
      this.warehouse_name,
      this.first_name,
      this.last_name,
      this.personType,
      this.name,
      final List<String>? designation,
      final List<ProductEntry>? product_details,
      final List<VehicleEntry>? vehicle_details})
      : _designation = designation,
        _product_details = product_details,
        _vehicle_details = vehicle_details;

  factory _$TicketSLImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketSLImplFromJson(json);

  @override
  final int? id;
  @override
  final String? indent_number;
  @override
  final String? order_number;
  @override
  final DateTime? created_at;
  @override
  final int? warehouse_id;
  @override
  final int? min_temperature;
  @override
  final int? max_temperature;
  @override
  final String? warehouse_name;
  @override
  final String? first_name;
  @override
  final dynamic last_name;
  @override
  final String? personType;
  @override
  final String? name;
  final List<String>? _designation;
  @override
  List<String>? get designation {
    final value = _designation;
    if (value == null) return null;
    if (_designation is EqualUnmodifiableListView) return _designation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductEntry>? _product_details;
  @override
  List<ProductEntry>? get product_details {
    final value = _product_details;
    if (value == null) return null;
    if (_product_details is EqualUnmodifiableListView) return _product_details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VehicleEntry>? _vehicle_details;
  @override
  List<VehicleEntry>? get vehicle_details {
    final value = _vehicle_details;
    if (value == null) return null;
    if (_vehicle_details is EqualUnmodifiableListView) return _vehicle_details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TicketSL(id: $id, indent_number: $indent_number, order_number: $order_number, created_at: $created_at, warehouse_id: $warehouse_id, min_temperature: $min_temperature, max_temperature: $max_temperature, warehouse_name: $warehouse_name, first_name: $first_name, last_name: $last_name, personType: $personType, name: $name, designation: $designation, product_details: $product_details, vehicle_details: $vehicle_details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketSLImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.indent_number, indent_number) ||
                other.indent_number == indent_number) &&
            (identical(other.order_number, order_number) ||
                other.order_number == order_number) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.warehouse_id, warehouse_id) ||
                other.warehouse_id == warehouse_id) &&
            (identical(other.min_temperature, min_temperature) ||
                other.min_temperature == min_temperature) &&
            (identical(other.max_temperature, max_temperature) ||
                other.max_temperature == max_temperature) &&
            (identical(other.warehouse_name, warehouse_name) ||
                other.warehouse_name == warehouse_name) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            const DeepCollectionEquality().equals(other.last_name, last_name) &&
            (identical(other.personType, personType) ||
                other.personType == personType) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._designation, _designation) &&
            const DeepCollectionEquality()
                .equals(other._product_details, _product_details) &&
            const DeepCollectionEquality()
                .equals(other._vehicle_details, _vehicle_details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      indent_number,
      order_number,
      created_at,
      warehouse_id,
      min_temperature,
      max_temperature,
      warehouse_name,
      first_name,
      const DeepCollectionEquality().hash(last_name),
      personType,
      name,
      const DeepCollectionEquality().hash(_designation),
      const DeepCollectionEquality().hash(_product_details),
      const DeepCollectionEquality().hash(_vehicle_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketSLImplCopyWith<_$TicketSLImpl> get copyWith =>
      __$$TicketSLImplCopyWithImpl<_$TicketSLImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketSLImplToJson(
      this,
    );
  }
}

abstract class _TicketSL implements TicketSL {
  const factory _TicketSL(
      {final int? id,
      final String? indent_number,
      final String? order_number,
      final DateTime? created_at,
      final int? warehouse_id,
      final int? min_temperature,
      final int? max_temperature,
      final String? warehouse_name,
      final String? first_name,
      final dynamic last_name,
      final String? personType,
      final String? name,
      final List<String>? designation,
      final List<ProductEntry>? product_details,
      final List<VehicleEntry>? vehicle_details}) = _$TicketSLImpl;

  factory _TicketSL.fromJson(Map<String, dynamic> json) =
      _$TicketSLImpl.fromJson;

  @override
  int? get id;
  @override
  String? get indent_number;
  @override
  String? get order_number;
  @override
  DateTime? get created_at;
  @override
  int? get warehouse_id;
  @override
  int? get min_temperature;
  @override
  int? get max_temperature;
  @override
  String? get warehouse_name;
  @override
  String? get first_name;
  @override
  dynamic get last_name;
  @override
  String? get personType;
  @override
  String? get name;
  @override
  List<String>? get designation;
  @override
  List<ProductEntry>? get product_details;
  @override
  List<VehicleEntry>? get vehicle_details;
  @override
  @JsonKey(ignore: true)
  _$$TicketSLImplCopyWith<_$TicketSLImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Ticket {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketSG ticketSG) sg,
    required TResult Function(TicketSL ticketSL) sl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketSG ticketSG)? sg,
    TResult? Function(TicketSL ticketSL)? sl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketSG ticketSG)? sg,
    TResult Function(TicketSL ticketSL)? sl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketSGWrapper value) sg,
    required TResult Function(TicketSLWrapper value) sl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketSGWrapper value)? sg,
    TResult? Function(TicketSLWrapper value)? sl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketSGWrapper value)? sg,
    TResult Function(TicketSLWrapper value)? sl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCopyWith<$Res> {
  factory $TicketCopyWith(Ticket value, $Res Function(Ticket) then) =
      _$TicketCopyWithImpl<$Res, Ticket>;
}

/// @nodoc
class _$TicketCopyWithImpl<$Res, $Val extends Ticket>
    implements $TicketCopyWith<$Res> {
  _$TicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TicketSGWrapperImplCopyWith<$Res> {
  factory _$$TicketSGWrapperImplCopyWith(_$TicketSGWrapperImpl value,
          $Res Function(_$TicketSGWrapperImpl) then) =
      __$$TicketSGWrapperImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketSG ticketSG});

  $TicketSGCopyWith<$Res> get ticketSG;
}

/// @nodoc
class __$$TicketSGWrapperImplCopyWithImpl<$Res>
    extends _$TicketCopyWithImpl<$Res, _$TicketSGWrapperImpl>
    implements _$$TicketSGWrapperImplCopyWith<$Res> {
  __$$TicketSGWrapperImplCopyWithImpl(
      _$TicketSGWrapperImpl _value, $Res Function(_$TicketSGWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketSG = null,
  }) {
    return _then(_$TicketSGWrapperImpl(
      null == ticketSG
          ? _value.ticketSG
          : ticketSG // ignore: cast_nullable_to_non_nullable
              as TicketSG,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketSGCopyWith<$Res> get ticketSG {
    return $TicketSGCopyWith<$Res>(_value.ticketSG, (value) {
      return _then(_value.copyWith(ticketSG: value));
    });
  }
}

/// @nodoc

class _$TicketSGWrapperImpl implements TicketSGWrapper {
  const _$TicketSGWrapperImpl(this.ticketSG);

  @override
  final TicketSG ticketSG;

  @override
  String toString() {
    return 'Ticket.sg(ticketSG: $ticketSG)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketSGWrapperImpl &&
            (identical(other.ticketSG, ticketSG) ||
                other.ticketSG == ticketSG));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticketSG);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketSGWrapperImplCopyWith<_$TicketSGWrapperImpl> get copyWith =>
      __$$TicketSGWrapperImplCopyWithImpl<_$TicketSGWrapperImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketSG ticketSG) sg,
    required TResult Function(TicketSL ticketSL) sl,
  }) {
    return sg(ticketSG);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketSG ticketSG)? sg,
    TResult? Function(TicketSL ticketSL)? sl,
  }) {
    return sg?.call(ticketSG);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketSG ticketSG)? sg,
    TResult Function(TicketSL ticketSL)? sl,
    required TResult orElse(),
  }) {
    if (sg != null) {
      return sg(ticketSG);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketSGWrapper value) sg,
    required TResult Function(TicketSLWrapper value) sl,
  }) {
    return sg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketSGWrapper value)? sg,
    TResult? Function(TicketSLWrapper value)? sl,
  }) {
    return sg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketSGWrapper value)? sg,
    TResult Function(TicketSLWrapper value)? sl,
    required TResult orElse(),
  }) {
    if (sg != null) {
      return sg(this);
    }
    return orElse();
  }
}

abstract class TicketSGWrapper implements Ticket {
  const factory TicketSGWrapper(final TicketSG ticketSG) =
      _$TicketSGWrapperImpl;

  TicketSG get ticketSG;
  @JsonKey(ignore: true)
  _$$TicketSGWrapperImplCopyWith<_$TicketSGWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketSLWrapperImplCopyWith<$Res> {
  factory _$$TicketSLWrapperImplCopyWith(_$TicketSLWrapperImpl value,
          $Res Function(_$TicketSLWrapperImpl) then) =
      __$$TicketSLWrapperImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TicketSL ticketSL});

  $TicketSLCopyWith<$Res> get ticketSL;
}

/// @nodoc
class __$$TicketSLWrapperImplCopyWithImpl<$Res>
    extends _$TicketCopyWithImpl<$Res, _$TicketSLWrapperImpl>
    implements _$$TicketSLWrapperImplCopyWith<$Res> {
  __$$TicketSLWrapperImplCopyWithImpl(
      _$TicketSLWrapperImpl _value, $Res Function(_$TicketSLWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketSL = null,
  }) {
    return _then(_$TicketSLWrapperImpl(
      null == ticketSL
          ? _value.ticketSL
          : ticketSL // ignore: cast_nullable_to_non_nullable
              as TicketSL,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketSLCopyWith<$Res> get ticketSL {
    return $TicketSLCopyWith<$Res>(_value.ticketSL, (value) {
      return _then(_value.copyWith(ticketSL: value));
    });
  }
}

/// @nodoc

class _$TicketSLWrapperImpl implements TicketSLWrapper {
  const _$TicketSLWrapperImpl(this.ticketSL);

  @override
  final TicketSL ticketSL;

  @override
  String toString() {
    return 'Ticket.sl(ticketSL: $ticketSL)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketSLWrapperImpl &&
            (identical(other.ticketSL, ticketSL) ||
                other.ticketSL == ticketSL));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticketSL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketSLWrapperImplCopyWith<_$TicketSLWrapperImpl> get copyWith =>
      __$$TicketSLWrapperImplCopyWithImpl<_$TicketSLWrapperImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TicketSG ticketSG) sg,
    required TResult Function(TicketSL ticketSL) sl,
  }) {
    return sl(ticketSL);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TicketSG ticketSG)? sg,
    TResult? Function(TicketSL ticketSL)? sl,
  }) {
    return sl?.call(ticketSL);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TicketSG ticketSG)? sg,
    TResult Function(TicketSL ticketSL)? sl,
    required TResult orElse(),
  }) {
    if (sl != null) {
      return sl(ticketSL);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketSGWrapper value) sg,
    required TResult Function(TicketSLWrapper value) sl,
  }) {
    return sl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketSGWrapper value)? sg,
    TResult? Function(TicketSLWrapper value)? sl,
  }) {
    return sl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketSGWrapper value)? sg,
    TResult Function(TicketSLWrapper value)? sl,
    required TResult orElse(),
  }) {
    if (sl != null) {
      return sl(this);
    }
    return orElse();
  }
}

abstract class TicketSLWrapper implements Ticket {
  const factory TicketSLWrapper(final TicketSL ticketSL) =
      _$TicketSLWrapperImpl;

  TicketSL get ticketSL;
  @JsonKey(ignore: true)
  _$$TicketSLWrapperImplCopyWith<_$TicketSLWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
