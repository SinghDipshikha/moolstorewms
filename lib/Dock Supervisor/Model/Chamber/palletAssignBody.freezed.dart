// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'palletAssignBody.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PalletAssignBody _$PalletAssignBodyFromJson(Map<String, dynamic> json) {
  return _PalletAssignBody.fromJson(json);
}

/// @nodoc
mixin _$PalletAssignBody {
  int get id => throw _privateConstructorUsedError;
  String get pallet_coordinate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get warehouse_id => throw _privateConstructorUsedError;
  int get chamber_id => throw _privateConstructorUsedError;
  int get is_full => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PalletAssignBodyCopyWith<PalletAssignBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PalletAssignBodyCopyWith<$Res> {
  factory $PalletAssignBodyCopyWith(
          PalletAssignBody value, $Res Function(PalletAssignBody) then) =
      _$PalletAssignBodyCopyWithImpl<$Res, PalletAssignBody>;
  @useResult
  $Res call(
      {int id,
      String pallet_coordinate,
      String status,
      int warehouse_id,
      int chamber_id,
      int is_full,
      List<Product>? products});
}

/// @nodoc
class _$PalletAssignBodyCopyWithImpl<$Res, $Val extends PalletAssignBody>
    implements $PalletAssignBodyCopyWith<$Res> {
  _$PalletAssignBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pallet_coordinate = null,
    Object? status = null,
    Object? warehouse_id = null,
    Object? chamber_id = null,
    Object? is_full = null,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pallet_coordinate: null == pallet_coordinate
          ? _value.pallet_coordinate
          : pallet_coordinate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      warehouse_id: null == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int,
      chamber_id: null == chamber_id
          ? _value.chamber_id
          : chamber_id // ignore: cast_nullable_to_non_nullable
              as int,
      is_full: null == is_full
          ? _value.is_full
          : is_full // ignore: cast_nullable_to_non_nullable
              as int,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PalletAssignBodyImplCopyWith<$Res>
    implements $PalletAssignBodyCopyWith<$Res> {
  factory _$$PalletAssignBodyImplCopyWith(_$PalletAssignBodyImpl value,
          $Res Function(_$PalletAssignBodyImpl) then) =
      __$$PalletAssignBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String pallet_coordinate,
      String status,
      int warehouse_id,
      int chamber_id,
      int is_full,
      List<Product>? products});
}

/// @nodoc
class __$$PalletAssignBodyImplCopyWithImpl<$Res>
    extends _$PalletAssignBodyCopyWithImpl<$Res, _$PalletAssignBodyImpl>
    implements _$$PalletAssignBodyImplCopyWith<$Res> {
  __$$PalletAssignBodyImplCopyWithImpl(_$PalletAssignBodyImpl _value,
      $Res Function(_$PalletAssignBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pallet_coordinate = null,
    Object? status = null,
    Object? warehouse_id = null,
    Object? chamber_id = null,
    Object? is_full = null,
    Object? products = freezed,
  }) {
    return _then(_$PalletAssignBodyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pallet_coordinate: null == pallet_coordinate
          ? _value.pallet_coordinate
          : pallet_coordinate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      warehouse_id: null == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int,
      chamber_id: null == chamber_id
          ? _value.chamber_id
          : chamber_id // ignore: cast_nullable_to_non_nullable
              as int,
      is_full: null == is_full
          ? _value.is_full
          : is_full // ignore: cast_nullable_to_non_nullable
              as int,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PalletAssignBodyImpl implements _PalletAssignBody {
  const _$PalletAssignBodyImpl(
      {required this.id,
      required this.pallet_coordinate,
      required this.status,
      required this.warehouse_id,
      required this.chamber_id,
      this.is_full = 0,
      final List<Product>? products})
      : _products = products;

  factory _$PalletAssignBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PalletAssignBodyImplFromJson(json);

  @override
  final int id;
  @override
  final String pallet_coordinate;
  @override
  final String status;
  @override
  final int warehouse_id;
  @override
  final int chamber_id;
  @override
  @JsonKey()
  final int is_full;
  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PalletAssignBody(id: $id, pallet_coordinate: $pallet_coordinate, status: $status, warehouse_id: $warehouse_id, chamber_id: $chamber_id, is_full: $is_full, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PalletAssignBodyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pallet_coordinate, pallet_coordinate) ||
                other.pallet_coordinate == pallet_coordinate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.warehouse_id, warehouse_id) ||
                other.warehouse_id == warehouse_id) &&
            (identical(other.chamber_id, chamber_id) ||
                other.chamber_id == chamber_id) &&
            (identical(other.is_full, is_full) || other.is_full == is_full) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      pallet_coordinate,
      status,
      warehouse_id,
      chamber_id,
      is_full,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PalletAssignBodyImplCopyWith<_$PalletAssignBodyImpl> get copyWith =>
      __$$PalletAssignBodyImplCopyWithImpl<_$PalletAssignBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PalletAssignBodyImplToJson(
      this,
    );
  }
}

abstract class _PalletAssignBody implements PalletAssignBody {
  const factory _PalletAssignBody(
      {required final int id,
      required final String pallet_coordinate,
      required final String status,
      required final int warehouse_id,
      required final int chamber_id,
      final int is_full,
      final List<Product>? products}) = _$PalletAssignBodyImpl;

  factory _PalletAssignBody.fromJson(Map<String, dynamic> json) =
      _$PalletAssignBodyImpl.fromJson;

  @override
  int get id;
  @override
  String get pallet_coordinate;
  @override
  String get status;
  @override
  int get warehouse_id;
  @override
  int get chamber_id;
  @override
  int get is_full;
  @override
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$PalletAssignBodyImplCopyWith<_$PalletAssignBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  int get unit => throw _privateConstructorUsedError;
  DateTime? get expiry_date => throw _privateConstructorUsedError;
  String get product_name => throw _privateConstructorUsedError;
  String get indent_number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      int qty,
      int unit,
      DateTime? expiry_date,
      String product_name,
      String indent_number});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? qty = null,
    Object? unit = null,
    Object? expiry_date = freezed,
    Object? product_name = null,
    Object? indent_number = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as int,
      expiry_date: freezed == expiry_date
          ? _value.expiry_date
          : expiry_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      product_name: null == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String,
      indent_number: null == indent_number
          ? _value.indent_number
          : indent_number // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int qty,
      int unit,
      DateTime? expiry_date,
      String product_name,
      String indent_number});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? qty = null,
    Object? unit = null,
    Object? expiry_date = freezed,
    Object? product_name = null,
    Object? indent_number = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as int,
      expiry_date: freezed == expiry_date
          ? _value.expiry_date
          : expiry_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      product_name: null == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String,
      indent_number: null == indent_number
          ? _value.indent_number
          : indent_number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      required this.qty,
      required this.unit,
      this.expiry_date,
      required this.product_name,
      required this.indent_number});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int id;
  @override
  final int qty;
  @override
  final int unit;
  @override
  final DateTime? expiry_date;
  @override
  final String product_name;
  @override
  final String indent_number;

  @override
  String toString() {
    return 'Product(id: $id, qty: $qty, unit: $unit, expiry_date: $expiry_date, product_name: $product_name, indent_number: $indent_number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.expiry_date, expiry_date) ||
                other.expiry_date == expiry_date) &&
            (identical(other.product_name, product_name) ||
                other.product_name == product_name) &&
            (identical(other.indent_number, indent_number) ||
                other.indent_number == indent_number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, qty, unit, expiry_date, product_name, indent_number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final int id,
      required final int qty,
      required final int unit,
      final DateTime? expiry_date,
      required final String product_name,
      required final String indent_number}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get id;
  @override
  int get qty;
  @override
  int get unit;
  @override
  DateTime? get expiry_date;
  @override
  String get product_name;
  @override
  String get indent_number;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
