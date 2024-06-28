// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viewIndentModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IndentViewModel _$IndentViewModelFromJson(Map<String, dynamic> json) {
  return _IndentViewModel.fromJson(json);
}

/// @nodoc
mixin _$IndentViewModel {
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
  CustomerListElement? get customer_details =>
      throw _privateConstructorUsedError;
  List<EnterProduct>? get product_details => throw _privateConstructorUsedError;
  VehicleDetails? get vehicle_details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndentViewModelCopyWith<IndentViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndentViewModelCopyWith<$Res> {
  factory $IndentViewModelCopyWith(
          IndentViewModel value, $Res Function(IndentViewModel) then) =
      _$IndentViewModelCopyWithImpl<$Res, IndentViewModel>;
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
      CustomerListElement? customer_details,
      List<EnterProduct>? product_details,
      VehicleDetails? vehicle_details});

  $CustomerListElementCopyWith<$Res>? get customer_details;
  $VehicleDetailsCopyWith<$Res>? get vehicle_details;
}

/// @nodoc
class _$IndentViewModelCopyWithImpl<$Res, $Val extends IndentViewModel>
    implements $IndentViewModelCopyWith<$Res> {
  _$IndentViewModelCopyWithImpl(this._value, this._then);

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
    Object? customer_details = freezed,
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
      customer_details: freezed == customer_details
          ? _value.customer_details
          : customer_details // ignore: cast_nullable_to_non_nullable
              as CustomerListElement?,
      product_details: freezed == product_details
          ? _value.product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as List<EnterProduct>?,
      vehicle_details: freezed == vehicle_details
          ? _value.vehicle_details
          : vehicle_details // ignore: cast_nullable_to_non_nullable
              as VehicleDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerListElementCopyWith<$Res>? get customer_details {
    if (_value.customer_details == null) {
      return null;
    }

    return $CustomerListElementCopyWith<$Res>(_value.customer_details!,
        (value) {
      return _then(_value.copyWith(customer_details: value) as $Val);
    });
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
abstract class _$$IndentViewModelImplCopyWith<$Res>
    implements $IndentViewModelCopyWith<$Res> {
  factory _$$IndentViewModelImplCopyWith(_$IndentViewModelImpl value,
          $Res Function(_$IndentViewModelImpl) then) =
      __$$IndentViewModelImplCopyWithImpl<$Res>;
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
      CustomerListElement? customer_details,
      List<EnterProduct>? product_details,
      VehicleDetails? vehicle_details});

  @override
  $CustomerListElementCopyWith<$Res>? get customer_details;
  @override
  $VehicleDetailsCopyWith<$Res>? get vehicle_details;
}

/// @nodoc
class __$$IndentViewModelImplCopyWithImpl<$Res>
    extends _$IndentViewModelCopyWithImpl<$Res, _$IndentViewModelImpl>
    implements _$$IndentViewModelImplCopyWith<$Res> {
  __$$IndentViewModelImplCopyWithImpl(
      _$IndentViewModelImpl _value, $Res Function(_$IndentViewModelImpl) _then)
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
    Object? customer_details = freezed,
    Object? product_details = freezed,
    Object? vehicle_details = freezed,
  }) {
    return _then(_$IndentViewModelImpl(
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
      customer_details: freezed == customer_details
          ? _value.customer_details
          : customer_details // ignore: cast_nullable_to_non_nullable
              as CustomerListElement?,
      product_details: freezed == product_details
          ? _value._product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as List<EnterProduct>?,
      vehicle_details: freezed == vehicle_details
          ? _value.vehicle_details
          : vehicle_details // ignore: cast_nullable_to_non_nullable
              as VehicleDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndentViewModelImpl implements _IndentViewModel {
  const _$IndentViewModelImpl(
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
      this.customer_details,
      final List<EnterProduct>? product_details,
      this.vehicle_details})
      : _designation = designation,
        _product_details = product_details;

  factory _$IndentViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndentViewModelImplFromJson(json);

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

  @override
  final CustomerListElement? customer_details;
  final List<EnterProduct>? _product_details;
  @override
  List<EnterProduct>? get product_details {
    final value = _product_details;
    if (value == null) return null;
    if (_product_details is EqualUnmodifiableListView) return _product_details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final VehicleDetails? vehicle_details;

  @override
  String toString() {
    return 'IndentViewModel(id: $id, indent_number: $indent_number, order_number: $order_number, created_at: $created_at, warehouse_id: $warehouse_id, min_temperature: $min_temperature, max_temperature: $max_temperature, warehouse_name: $warehouse_name, first_name: $first_name, last_name: $last_name, personType: $personType, name: $name, designation: $designation, customer_details: $customer_details, product_details: $product_details, vehicle_details: $vehicle_details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndentViewModelImpl &&
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
            (identical(other.customer_details, customer_details) ||
                other.customer_details == customer_details) &&
            const DeepCollectionEquality()
                .equals(other._product_details, _product_details) &&
            (identical(other.vehicle_details, vehicle_details) ||
                other.vehicle_details == vehicle_details));
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
      customer_details,
      const DeepCollectionEquality().hash(_product_details),
      vehicle_details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndentViewModelImplCopyWith<_$IndentViewModelImpl> get copyWith =>
      __$$IndentViewModelImplCopyWithImpl<_$IndentViewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndentViewModelImplToJson(
      this,
    );
  }
}

abstract class _IndentViewModel implements IndentViewModel {
  const factory _IndentViewModel(
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
      final CustomerListElement? customer_details,
      final List<EnterProduct>? product_details,
      final VehicleDetails? vehicle_details}) = _$IndentViewModelImpl;

  factory _IndentViewModel.fromJson(Map<String, dynamic> json) =
      _$IndentViewModelImpl.fromJson;

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
  CustomerListElement? get customer_details;
  @override
  List<EnterProduct>? get product_details;
  @override
  VehicleDetails? get vehicle_details;
  @override
  @JsonKey(ignore: true)
  _$$IndentViewModelImplCopyWith<_$IndentViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
