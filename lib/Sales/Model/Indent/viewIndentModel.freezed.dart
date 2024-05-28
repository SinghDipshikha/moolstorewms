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
  String? get ticket_id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  dynamic get last_name => throw _privateConstructorUsedError;
  String? get call_from_seller_company => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get ship_from_seller_companany => throw _privateConstructorUsedError;
  String? get ship_to_seller_companany => throw _privateConstructorUsedError;
  String? get bill_to_seller_companany => throw _privateConstructorUsedError;
  List<ProductsIndentViewModel>? get product_details =>
      throw _privateConstructorUsedError;
  List<ChecksIndentViewModel>? get check_in_out =>
      throw _privateConstructorUsedError;

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
      {String? ticket_id,
      DateTime? created_at,
      String? first_name,
      dynamic last_name,
      String? call_from_seller_company,
      String? name,
      String? ship_from_seller_companany,
      String? ship_to_seller_companany,
      String? bill_to_seller_companany,
      List<ProductsIndentViewModel>? product_details,
      List<ChecksIndentViewModel>? check_in_out});
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
    Object? ticket_id = freezed,
    Object? created_at = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? call_from_seller_company = freezed,
    Object? name = freezed,
    Object? ship_from_seller_companany = freezed,
    Object? ship_to_seller_companany = freezed,
    Object? bill_to_seller_companany = freezed,
    Object? product_details = freezed,
    Object? check_in_out = freezed,
  }) {
    return _then(_value.copyWith(
      ticket_id: freezed == ticket_id
          ? _value.ticket_id
          : ticket_id // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      call_from_seller_company: freezed == call_from_seller_company
          ? _value.call_from_seller_company
          : call_from_seller_company // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ship_from_seller_companany: freezed == ship_from_seller_companany
          ? _value.ship_from_seller_companany
          : ship_from_seller_companany // ignore: cast_nullable_to_non_nullable
              as String?,
      ship_to_seller_companany: freezed == ship_to_seller_companany
          ? _value.ship_to_seller_companany
          : ship_to_seller_companany // ignore: cast_nullable_to_non_nullable
              as String?,
      bill_to_seller_companany: freezed == bill_to_seller_companany
          ? _value.bill_to_seller_companany
          : bill_to_seller_companany // ignore: cast_nullable_to_non_nullable
              as String?,
      product_details: freezed == product_details
          ? _value.product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as List<ProductsIndentViewModel>?,
      check_in_out: freezed == check_in_out
          ? _value.check_in_out
          : check_in_out // ignore: cast_nullable_to_non_nullable
              as List<ChecksIndentViewModel>?,
    ) as $Val);
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
      {String? ticket_id,
      DateTime? created_at,
      String? first_name,
      dynamic last_name,
      String? call_from_seller_company,
      String? name,
      String? ship_from_seller_companany,
      String? ship_to_seller_companany,
      String? bill_to_seller_companany,
      List<ProductsIndentViewModel>? product_details,
      List<ChecksIndentViewModel>? check_in_out});
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
    Object? ticket_id = freezed,
    Object? created_at = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? call_from_seller_company = freezed,
    Object? name = freezed,
    Object? ship_from_seller_companany = freezed,
    Object? ship_to_seller_companany = freezed,
    Object? bill_to_seller_companany = freezed,
    Object? product_details = freezed,
    Object? check_in_out = freezed,
  }) {
    return _then(_$IndentViewModelImpl(
      ticket_id: freezed == ticket_id
          ? _value.ticket_id
          : ticket_id // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      call_from_seller_company: freezed == call_from_seller_company
          ? _value.call_from_seller_company
          : call_from_seller_company // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ship_from_seller_companany: freezed == ship_from_seller_companany
          ? _value.ship_from_seller_companany
          : ship_from_seller_companany // ignore: cast_nullable_to_non_nullable
              as String?,
      ship_to_seller_companany: freezed == ship_to_seller_companany
          ? _value.ship_to_seller_companany
          : ship_to_seller_companany // ignore: cast_nullable_to_non_nullable
              as String?,
      bill_to_seller_companany: freezed == bill_to_seller_companany
          ? _value.bill_to_seller_companany
          : bill_to_seller_companany // ignore: cast_nullable_to_non_nullable
              as String?,
      product_details: freezed == product_details
          ? _value._product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as List<ProductsIndentViewModel>?,
      check_in_out: freezed == check_in_out
          ? _value._check_in_out
          : check_in_out // ignore: cast_nullable_to_non_nullable
              as List<ChecksIndentViewModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndentViewModelImpl implements _IndentViewModel {
  const _$IndentViewModelImpl(
      {this.ticket_id,
      this.created_at,
      this.first_name,
      this.last_name,
      this.call_from_seller_company,
      this.name,
      this.ship_from_seller_companany,
      this.ship_to_seller_companany,
      this.bill_to_seller_companany,
      final List<ProductsIndentViewModel>? product_details,
      final List<ChecksIndentViewModel>? check_in_out})
      : _product_details = product_details,
        _check_in_out = check_in_out;

  factory _$IndentViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndentViewModelImplFromJson(json);

  @override
  final String? ticket_id;
  @override
  final DateTime? created_at;
  @override
  final String? first_name;
  @override
  final dynamic last_name;
  @override
  final String? call_from_seller_company;
  @override
  final String? name;
  @override
  final String? ship_from_seller_companany;
  @override
  final String? ship_to_seller_companany;
  @override
  final String? bill_to_seller_companany;
  final List<ProductsIndentViewModel>? _product_details;
  @override
  List<ProductsIndentViewModel>? get product_details {
    final value = _product_details;
    if (value == null) return null;
    if (_product_details is EqualUnmodifiableListView) return _product_details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ChecksIndentViewModel>? _check_in_out;
  @override
  List<ChecksIndentViewModel>? get check_in_out {
    final value = _check_in_out;
    if (value == null) return null;
    if (_check_in_out is EqualUnmodifiableListView) return _check_in_out;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IndentViewModel(ticket_id: $ticket_id, created_at: $created_at, first_name: $first_name, last_name: $last_name, call_from_seller_company: $call_from_seller_company, name: $name, ship_from_seller_companany: $ship_from_seller_companany, ship_to_seller_companany: $ship_to_seller_companany, bill_to_seller_companany: $bill_to_seller_companany, product_details: $product_details, check_in_out: $check_in_out)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndentViewModelImpl &&
            (identical(other.ticket_id, ticket_id) ||
                other.ticket_id == ticket_id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            const DeepCollectionEquality().equals(other.last_name, last_name) &&
            (identical(
                    other.call_from_seller_company, call_from_seller_company) ||
                other.call_from_seller_company == call_from_seller_company) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ship_from_seller_companany,
                    ship_from_seller_companany) ||
                other.ship_from_seller_companany ==
                    ship_from_seller_companany) &&
            (identical(
                    other.ship_to_seller_companany, ship_to_seller_companany) ||
                other.ship_to_seller_companany == ship_to_seller_companany) &&
            (identical(
                    other.bill_to_seller_companany, bill_to_seller_companany) ||
                other.bill_to_seller_companany == bill_to_seller_companany) &&
            const DeepCollectionEquality()
                .equals(other._product_details, _product_details) &&
            const DeepCollectionEquality()
                .equals(other._check_in_out, _check_in_out));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ticket_id,
      created_at,
      first_name,
      const DeepCollectionEquality().hash(last_name),
      call_from_seller_company,
      name,
      ship_from_seller_companany,
      ship_to_seller_companany,
      bill_to_seller_companany,
      const DeepCollectionEquality().hash(_product_details),
      const DeepCollectionEquality().hash(_check_in_out));

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
      {final String? ticket_id,
      final DateTime? created_at,
      final String? first_name,
      final dynamic last_name,
      final String? call_from_seller_company,
      final String? name,
      final String? ship_from_seller_companany,
      final String? ship_to_seller_companany,
      final String? bill_to_seller_companany,
      final List<ProductsIndentViewModel>? product_details,
      final List<ChecksIndentViewModel>? check_in_out}) = _$IndentViewModelImpl;

  factory _IndentViewModel.fromJson(Map<String, dynamic> json) =
      _$IndentViewModelImpl.fromJson;

  @override
  String? get ticket_id;
  @override
  DateTime? get created_at;
  @override
  String? get first_name;
  @override
  dynamic get last_name;
  @override
  String? get call_from_seller_company;
  @override
  String? get name;
  @override
  String? get ship_from_seller_companany;
  @override
  String? get ship_to_seller_companany;
  @override
  String? get bill_to_seller_companany;
  @override
  List<ProductsIndentViewModel>? get product_details;
  @override
  List<ChecksIndentViewModel>? get check_in_out;
  @override
  @JsonKey(ignore: true)
  _$$IndentViewModelImplCopyWith<_$IndentViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChecksIndentViewModel _$ChecksIndentViewModelFromJson(
    Map<String, dynamic> json) {
  return _ChecksIndentViewModel.fromJson(json);
}

/// @nodoc
mixin _$ChecksIndentViewModel {
  String? get vehicle_types => throw _privateConstructorUsedError;
  String? get vehicle_number => throw _privateConstructorUsedError;
  String? get driver_name => throw _privateConstructorUsedError;
  String? get checkin_type => throw _privateConstructorUsedError;
  DateTime? get expected_date => throw _privateConstructorUsedError;
  String? get seller_product_value => throw _privateConstructorUsedError;
  String? get product_name => throw _privateConstructorUsedError;
  String? get warehouse_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChecksIndentViewModelCopyWith<ChecksIndentViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecksIndentViewModelCopyWith<$Res> {
  factory $ChecksIndentViewModelCopyWith(ChecksIndentViewModel value,
          $Res Function(ChecksIndentViewModel) then) =
      _$ChecksIndentViewModelCopyWithImpl<$Res, ChecksIndentViewModel>;
  @useResult
  $Res call(
      {String? vehicle_types,
      String? vehicle_number,
      String? driver_name,
      String? checkin_type,
      DateTime? expected_date,
      String? seller_product_value,
      String? product_name,
      String? warehouse_name});
}

/// @nodoc
class _$ChecksIndentViewModelCopyWithImpl<$Res,
        $Val extends ChecksIndentViewModel>
    implements $ChecksIndentViewModelCopyWith<$Res> {
  _$ChecksIndentViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle_types = freezed,
    Object? vehicle_number = freezed,
    Object? driver_name = freezed,
    Object? checkin_type = freezed,
    Object? expected_date = freezed,
    Object? seller_product_value = freezed,
    Object? product_name = freezed,
    Object? warehouse_name = freezed,
  }) {
    return _then(_value.copyWith(
      vehicle_types: freezed == vehicle_types
          ? _value.vehicle_types
          : vehicle_types // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_number: freezed == vehicle_number
          ? _value.vehicle_number
          : vehicle_number // ignore: cast_nullable_to_non_nullable
              as String?,
      driver_name: freezed == driver_name
          ? _value.driver_name
          : driver_name // ignore: cast_nullable_to_non_nullable
              as String?,
      checkin_type: freezed == checkin_type
          ? _value.checkin_type
          : checkin_type // ignore: cast_nullable_to_non_nullable
              as String?,
      expected_date: freezed == expected_date
          ? _value.expected_date
          : expected_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      seller_product_value: freezed == seller_product_value
          ? _value.seller_product_value
          : seller_product_value // ignore: cast_nullable_to_non_nullable
              as String?,
      product_name: freezed == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_name: freezed == warehouse_name
          ? _value.warehouse_name
          : warehouse_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChecksIndentViewModelImplCopyWith<$Res>
    implements $ChecksIndentViewModelCopyWith<$Res> {
  factory _$$ChecksIndentViewModelImplCopyWith(
          _$ChecksIndentViewModelImpl value,
          $Res Function(_$ChecksIndentViewModelImpl) then) =
      __$$ChecksIndentViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? vehicle_types,
      String? vehicle_number,
      String? driver_name,
      String? checkin_type,
      DateTime? expected_date,
      String? seller_product_value,
      String? product_name,
      String? warehouse_name});
}

/// @nodoc
class __$$ChecksIndentViewModelImplCopyWithImpl<$Res>
    extends _$ChecksIndentViewModelCopyWithImpl<$Res,
        _$ChecksIndentViewModelImpl>
    implements _$$ChecksIndentViewModelImplCopyWith<$Res> {
  __$$ChecksIndentViewModelImplCopyWithImpl(_$ChecksIndentViewModelImpl _value,
      $Res Function(_$ChecksIndentViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle_types = freezed,
    Object? vehicle_number = freezed,
    Object? driver_name = freezed,
    Object? checkin_type = freezed,
    Object? expected_date = freezed,
    Object? seller_product_value = freezed,
    Object? product_name = freezed,
    Object? warehouse_name = freezed,
  }) {
    return _then(_$ChecksIndentViewModelImpl(
      vehicle_types: freezed == vehicle_types
          ? _value.vehicle_types
          : vehicle_types // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_number: freezed == vehicle_number
          ? _value.vehicle_number
          : vehicle_number // ignore: cast_nullable_to_non_nullable
              as String?,
      driver_name: freezed == driver_name
          ? _value.driver_name
          : driver_name // ignore: cast_nullable_to_non_nullable
              as String?,
      checkin_type: freezed == checkin_type
          ? _value.checkin_type
          : checkin_type // ignore: cast_nullable_to_non_nullable
              as String?,
      expected_date: freezed == expected_date
          ? _value.expected_date
          : expected_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      seller_product_value: freezed == seller_product_value
          ? _value.seller_product_value
          : seller_product_value // ignore: cast_nullable_to_non_nullable
              as String?,
      product_name: freezed == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_name: freezed == warehouse_name
          ? _value.warehouse_name
          : warehouse_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChecksIndentViewModelImpl implements _ChecksIndentViewModel {
  const _$ChecksIndentViewModelImpl(
      {this.vehicle_types,
      this.vehicle_number,
      this.driver_name,
      this.checkin_type,
      this.expected_date,
      this.seller_product_value,
      this.product_name,
      this.warehouse_name});

  factory _$ChecksIndentViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChecksIndentViewModelImplFromJson(json);

  @override
  final String? vehicle_types;
  @override
  final String? vehicle_number;
  @override
  final String? driver_name;
  @override
  final String? checkin_type;
  @override
  final DateTime? expected_date;
  @override
  final String? seller_product_value;
  @override
  final String? product_name;
  @override
  final String? warehouse_name;

  @override
  String toString() {
    return 'ChecksIndentViewModel(vehicle_types: $vehicle_types, vehicle_number: $vehicle_number, driver_name: $driver_name, checkin_type: $checkin_type, expected_date: $expected_date, seller_product_value: $seller_product_value, product_name: $product_name, warehouse_name: $warehouse_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecksIndentViewModelImpl &&
            (identical(other.vehicle_types, vehicle_types) ||
                other.vehicle_types == vehicle_types) &&
            (identical(other.vehicle_number, vehicle_number) ||
                other.vehicle_number == vehicle_number) &&
            (identical(other.driver_name, driver_name) ||
                other.driver_name == driver_name) &&
            (identical(other.checkin_type, checkin_type) ||
                other.checkin_type == checkin_type) &&
            (identical(other.expected_date, expected_date) ||
                other.expected_date == expected_date) &&
            (identical(other.seller_product_value, seller_product_value) ||
                other.seller_product_value == seller_product_value) &&
            (identical(other.product_name, product_name) ||
                other.product_name == product_name) &&
            (identical(other.warehouse_name, warehouse_name) ||
                other.warehouse_name == warehouse_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vehicle_types,
      vehicle_number,
      driver_name,
      checkin_type,
      expected_date,
      seller_product_value,
      product_name,
      warehouse_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecksIndentViewModelImplCopyWith<_$ChecksIndentViewModelImpl>
      get copyWith => __$$ChecksIndentViewModelImplCopyWithImpl<
          _$ChecksIndentViewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChecksIndentViewModelImplToJson(
      this,
    );
  }
}

abstract class _ChecksIndentViewModel implements ChecksIndentViewModel {
  const factory _ChecksIndentViewModel(
      {final String? vehicle_types,
      final String? vehicle_number,
      final String? driver_name,
      final String? checkin_type,
      final DateTime? expected_date,
      final String? seller_product_value,
      final String? product_name,
      final String? warehouse_name}) = _$ChecksIndentViewModelImpl;

  factory _ChecksIndentViewModel.fromJson(Map<String, dynamic> json) =
      _$ChecksIndentViewModelImpl.fromJson;

  @override
  String? get vehicle_types;
  @override
  String? get vehicle_number;
  @override
  String? get driver_name;
  @override
  String? get checkin_type;
  @override
  DateTime? get expected_date;
  @override
  String? get seller_product_value;
  @override
  String? get product_name;
  @override
  String? get warehouse_name;
  @override
  @JsonKey(ignore: true)
  _$$ChecksIndentViewModelImplCopyWith<_$ChecksIndentViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductsIndentViewModel _$ProductsIndentViewModelFromJson(
    Map<String, dynamic> json) {
  return _ProductsIndentViewModel.fromJson(json);
}

/// @nodoc
mixin _$ProductsIndentViewModel {
  int? get qty => throw _privateConstructorUsedError;
  int? get mrp => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get unit => throw _privateConstructorUsedError;
  String? get product_no => throw _privateConstructorUsedError;
  String? get product_name => throw _privateConstructorUsedError;
  String? get hsn_number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsIndentViewModelCopyWith<ProductsIndentViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsIndentViewModelCopyWith<$Res> {
  factory $ProductsIndentViewModelCopyWith(ProductsIndentViewModel value,
          $Res Function(ProductsIndentViewModel) then) =
      _$ProductsIndentViewModelCopyWithImpl<$Res, ProductsIndentViewModel>;
  @useResult
  $Res call(
      {int? qty,
      int? mrp,
      int? total,
      int? unit,
      String? product_no,
      String? product_name,
      String? hsn_number});
}

/// @nodoc
class _$ProductsIndentViewModelCopyWithImpl<$Res,
        $Val extends ProductsIndentViewModel>
    implements $ProductsIndentViewModelCopyWith<$Res> {
  _$ProductsIndentViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = freezed,
    Object? mrp = freezed,
    Object? total = freezed,
    Object? unit = freezed,
    Object? product_no = freezed,
    Object? product_name = freezed,
    Object? hsn_number = freezed,
  }) {
    return _then(_value.copyWith(
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      mrp: freezed == mrp
          ? _value.mrp
          : mrp // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as int?,
      product_no: freezed == product_no
          ? _value.product_no
          : product_no // ignore: cast_nullable_to_non_nullable
              as String?,
      product_name: freezed == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String?,
      hsn_number: freezed == hsn_number
          ? _value.hsn_number
          : hsn_number // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsIndentViewModelImplCopyWith<$Res>
    implements $ProductsIndentViewModelCopyWith<$Res> {
  factory _$$ProductsIndentViewModelImplCopyWith(
          _$ProductsIndentViewModelImpl value,
          $Res Function(_$ProductsIndentViewModelImpl) then) =
      __$$ProductsIndentViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? qty,
      int? mrp,
      int? total,
      int? unit,
      String? product_no,
      String? product_name,
      String? hsn_number});
}

/// @nodoc
class __$$ProductsIndentViewModelImplCopyWithImpl<$Res>
    extends _$ProductsIndentViewModelCopyWithImpl<$Res,
        _$ProductsIndentViewModelImpl>
    implements _$$ProductsIndentViewModelImplCopyWith<$Res> {
  __$$ProductsIndentViewModelImplCopyWithImpl(
      _$ProductsIndentViewModelImpl _value,
      $Res Function(_$ProductsIndentViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = freezed,
    Object? mrp = freezed,
    Object? total = freezed,
    Object? unit = freezed,
    Object? product_no = freezed,
    Object? product_name = freezed,
    Object? hsn_number = freezed,
  }) {
    return _then(_$ProductsIndentViewModelImpl(
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      mrp: freezed == mrp
          ? _value.mrp
          : mrp // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as int?,
      product_no: freezed == product_no
          ? _value.product_no
          : product_no // ignore: cast_nullable_to_non_nullable
              as String?,
      product_name: freezed == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String?,
      hsn_number: freezed == hsn_number
          ? _value.hsn_number
          : hsn_number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsIndentViewModelImpl implements _ProductsIndentViewModel {
  const _$ProductsIndentViewModelImpl(
      {this.qty,
      this.mrp,
      this.total,
      this.unit,
      this.product_no,
      this.product_name,
      this.hsn_number});

  factory _$ProductsIndentViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsIndentViewModelImplFromJson(json);

  @override
  final int? qty;
  @override
  final int? mrp;
  @override
  final int? total;
  @override
  final int? unit;
  @override
  final String? product_no;
  @override
  final String? product_name;
  @override
  final String? hsn_number;

  @override
  String toString() {
    return 'ProductsIndentViewModel(qty: $qty, mrp: $mrp, total: $total, unit: $unit, product_no: $product_no, product_name: $product_name, hsn_number: $hsn_number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsIndentViewModelImpl &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.mrp, mrp) || other.mrp == mrp) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.product_no, product_no) ||
                other.product_no == product_no) &&
            (identical(other.product_name, product_name) ||
                other.product_name == product_name) &&
            (identical(other.hsn_number, hsn_number) ||
                other.hsn_number == hsn_number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, qty, mrp, total, unit, product_no, product_name, hsn_number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsIndentViewModelImplCopyWith<_$ProductsIndentViewModelImpl>
      get copyWith => __$$ProductsIndentViewModelImplCopyWithImpl<
          _$ProductsIndentViewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsIndentViewModelImplToJson(
      this,
    );
  }
}

abstract class _ProductsIndentViewModel implements ProductsIndentViewModel {
  const factory _ProductsIndentViewModel(
      {final int? qty,
      final int? mrp,
      final int? total,
      final int? unit,
      final String? product_no,
      final String? product_name,
      final String? hsn_number}) = _$ProductsIndentViewModelImpl;

  factory _ProductsIndentViewModel.fromJson(Map<String, dynamic> json) =
      _$ProductsIndentViewModelImpl.fromJson;

  @override
  int? get qty;
  @override
  int? get mrp;
  @override
  int? get total;
  @override
  int? get unit;
  @override
  String? get product_no;
  @override
  String? get product_name;
  @override
  String? get hsn_number;
  @override
  @JsonKey(ignore: true)
  _$$ProductsIndentViewModelImplCopyWith<_$ProductsIndentViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
