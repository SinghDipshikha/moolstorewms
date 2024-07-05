// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gridChamber.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GridChamber _$GridChamberFromJson(Map<String, dynamic> json) {
  return _GridChamber.fromJson(json);
}

/// @nodoc
mixin _$GridChamber {
  int get warehouse_id => throw _privateConstructorUsedError;
  int get chamber_id => throw _privateConstructorUsedError;
  List<GridItem>? get grid => throw _privateConstructorUsedError;
  int get maxRow => throw _privateConstructorUsedError;
  int get maxColumn => throw _privateConstructorUsedError;
  int get minRow => throw _privateConstructorUsedError;
  int get minColumn => throw _privateConstructorUsedError;
  int get max_stack_level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GridChamberCopyWith<GridChamber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GridChamberCopyWith<$Res> {
  factory $GridChamberCopyWith(
          GridChamber value, $Res Function(GridChamber) then) =
      _$GridChamberCopyWithImpl<$Res, GridChamber>;
  @useResult
  $Res call(
      {int warehouse_id,
      int chamber_id,
      List<GridItem>? grid,
      int maxRow,
      int maxColumn,
      int minRow,
      int minColumn,
      int max_stack_level});
}

/// @nodoc
class _$GridChamberCopyWithImpl<$Res, $Val extends GridChamber>
    implements $GridChamberCopyWith<$Res> {
  _$GridChamberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouse_id = null,
    Object? chamber_id = null,
    Object? grid = freezed,
    Object? maxRow = null,
    Object? maxColumn = null,
    Object? minRow = null,
    Object? minColumn = null,
    Object? max_stack_level = null,
  }) {
    return _then(_value.copyWith(
      warehouse_id: null == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int,
      chamber_id: null == chamber_id
          ? _value.chamber_id
          : chamber_id // ignore: cast_nullable_to_non_nullable
              as int,
      grid: freezed == grid
          ? _value.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as List<GridItem>?,
      maxRow: null == maxRow
          ? _value.maxRow
          : maxRow // ignore: cast_nullable_to_non_nullable
              as int,
      maxColumn: null == maxColumn
          ? _value.maxColumn
          : maxColumn // ignore: cast_nullable_to_non_nullable
              as int,
      minRow: null == minRow
          ? _value.minRow
          : minRow // ignore: cast_nullable_to_non_nullable
              as int,
      minColumn: null == minColumn
          ? _value.minColumn
          : minColumn // ignore: cast_nullable_to_non_nullable
              as int,
      max_stack_level: null == max_stack_level
          ? _value.max_stack_level
          : max_stack_level // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GridChamberImplCopyWith<$Res>
    implements $GridChamberCopyWith<$Res> {
  factory _$$GridChamberImplCopyWith(
          _$GridChamberImpl value, $Res Function(_$GridChamberImpl) then) =
      __$$GridChamberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int warehouse_id,
      int chamber_id,
      List<GridItem>? grid,
      int maxRow,
      int maxColumn,
      int minRow,
      int minColumn,
      int max_stack_level});
}

/// @nodoc
class __$$GridChamberImplCopyWithImpl<$Res>
    extends _$GridChamberCopyWithImpl<$Res, _$GridChamberImpl>
    implements _$$GridChamberImplCopyWith<$Res> {
  __$$GridChamberImplCopyWithImpl(
      _$GridChamberImpl _value, $Res Function(_$GridChamberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouse_id = null,
    Object? chamber_id = null,
    Object? grid = freezed,
    Object? maxRow = null,
    Object? maxColumn = null,
    Object? minRow = null,
    Object? minColumn = null,
    Object? max_stack_level = null,
  }) {
    return _then(_$GridChamberImpl(
      warehouse_id: null == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int,
      chamber_id: null == chamber_id
          ? _value.chamber_id
          : chamber_id // ignore: cast_nullable_to_non_nullable
              as int,
      grid: freezed == grid
          ? _value._grid
          : grid // ignore: cast_nullable_to_non_nullable
              as List<GridItem>?,
      maxRow: null == maxRow
          ? _value.maxRow
          : maxRow // ignore: cast_nullable_to_non_nullable
              as int,
      maxColumn: null == maxColumn
          ? _value.maxColumn
          : maxColumn // ignore: cast_nullable_to_non_nullable
              as int,
      minRow: null == minRow
          ? _value.minRow
          : minRow // ignore: cast_nullable_to_non_nullable
              as int,
      minColumn: null == minColumn
          ? _value.minColumn
          : minColumn // ignore: cast_nullable_to_non_nullable
              as int,
      max_stack_level: null == max_stack_level
          ? _value.max_stack_level
          : max_stack_level // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GridChamberImpl implements _GridChamber {
  const _$GridChamberImpl(
      {required this.warehouse_id,
      required this.chamber_id,
      required final List<GridItem>? grid,
      required this.maxRow,
      required this.maxColumn,
      required this.minRow,
      required this.minColumn,
      required this.max_stack_level})
      : _grid = grid;

  factory _$GridChamberImpl.fromJson(Map<String, dynamic> json) =>
      _$$GridChamberImplFromJson(json);

  @override
  final int warehouse_id;
  @override
  final int chamber_id;
  final List<GridItem>? _grid;
  @override
  List<GridItem>? get grid {
    final value = _grid;
    if (value == null) return null;
    if (_grid is EqualUnmodifiableListView) return _grid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int maxRow;
  @override
  final int maxColumn;
  @override
  final int minRow;
  @override
  final int minColumn;
  @override
  final int max_stack_level;

  @override
  String toString() {
    return 'GridChamber(warehouse_id: $warehouse_id, chamber_id: $chamber_id, grid: $grid, maxRow: $maxRow, maxColumn: $maxColumn, minRow: $minRow, minColumn: $minColumn, max_stack_level: $max_stack_level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GridChamberImpl &&
            (identical(other.warehouse_id, warehouse_id) ||
                other.warehouse_id == warehouse_id) &&
            (identical(other.chamber_id, chamber_id) ||
                other.chamber_id == chamber_id) &&
            const DeepCollectionEquality().equals(other._grid, _grid) &&
            (identical(other.maxRow, maxRow) || other.maxRow == maxRow) &&
            (identical(other.maxColumn, maxColumn) ||
                other.maxColumn == maxColumn) &&
            (identical(other.minRow, minRow) || other.minRow == minRow) &&
            (identical(other.minColumn, minColumn) ||
                other.minColumn == minColumn) &&
            (identical(other.max_stack_level, max_stack_level) ||
                other.max_stack_level == max_stack_level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      warehouse_id,
      chamber_id,
      const DeepCollectionEquality().hash(_grid),
      maxRow,
      maxColumn,
      minRow,
      minColumn,
      max_stack_level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GridChamberImplCopyWith<_$GridChamberImpl> get copyWith =>
      __$$GridChamberImplCopyWithImpl<_$GridChamberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GridChamberImplToJson(
      this,
    );
  }
}

abstract class _GridChamber implements GridChamber {
  const factory _GridChamber(
      {required final int warehouse_id,
      required final int chamber_id,
      required final List<GridItem>? grid,
      required final int maxRow,
      required final int maxColumn,
      required final int minRow,
      required final int minColumn,
      required final int max_stack_level}) = _$GridChamberImpl;

  factory _GridChamber.fromJson(Map<String, dynamic> json) =
      _$GridChamberImpl.fromJson;

  @override
  int get warehouse_id;
  @override
  int get chamber_id;
  @override
  List<GridItem>? get grid;
  @override
  int get maxRow;
  @override
  int get maxColumn;
  @override
  int get minRow;
  @override
  int get minColumn;
  @override
  int get max_stack_level;
  @override
  @JsonKey(ignore: true)
  _$$GridChamberImplCopyWith<_$GridChamberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GridItem _$GridItemFromJson(Map<String, dynamic> json) {
  return _GridItem.fromJson(json);
}

/// @nodoc
mixin _$GridItem {
  String get pallet => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get stacking_level => throw _privateConstructorUsedError;
  int get is_full => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _productsFromJson, toJson: _productsToJson)
  List<Product>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GridItemCopyWith<GridItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GridItemCopyWith<$Res> {
  factory $GridItemCopyWith(GridItem value, $Res Function(GridItem) then) =
      _$GridItemCopyWithImpl<$Res, GridItem>;
  @useResult
  $Res call(
      {String pallet,
      String status,
      int stacking_level,
      int is_full,
      @JsonKey(fromJson: _productsFromJson, toJson: _productsToJson)
      List<Product>? products});
}

/// @nodoc
class _$GridItemCopyWithImpl<$Res, $Val extends GridItem>
    implements $GridItemCopyWith<$Res> {
  _$GridItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pallet = null,
    Object? status = null,
    Object? stacking_level = null,
    Object? is_full = null,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      pallet: null == pallet
          ? _value.pallet
          : pallet // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      stacking_level: null == stacking_level
          ? _value.stacking_level
          : stacking_level // ignore: cast_nullable_to_non_nullable
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
abstract class _$$GridItemImplCopyWith<$Res>
    implements $GridItemCopyWith<$Res> {
  factory _$$GridItemImplCopyWith(
          _$GridItemImpl value, $Res Function(_$GridItemImpl) then) =
      __$$GridItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pallet,
      String status,
      int stacking_level,
      int is_full,
      @JsonKey(fromJson: _productsFromJson, toJson: _productsToJson)
      List<Product>? products});
}

/// @nodoc
class __$$GridItemImplCopyWithImpl<$Res>
    extends _$GridItemCopyWithImpl<$Res, _$GridItemImpl>
    implements _$$GridItemImplCopyWith<$Res> {
  __$$GridItemImplCopyWithImpl(
      _$GridItemImpl _value, $Res Function(_$GridItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pallet = null,
    Object? status = null,
    Object? stacking_level = null,
    Object? is_full = null,
    Object? products = freezed,
  }) {
    return _then(_$GridItemImpl(
      pallet: null == pallet
          ? _value.pallet
          : pallet // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      stacking_level: null == stacking_level
          ? _value.stacking_level
          : stacking_level // ignore: cast_nullable_to_non_nullable
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
class _$GridItemImpl implements _GridItem {
  const _$GridItemImpl(
      {required this.pallet,
      required this.status,
      required this.stacking_level,
      required this.is_full,
      @JsonKey(fromJson: _productsFromJson, toJson: _productsToJson)
      final List<Product>? products})
      : _products = products;

  factory _$GridItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$GridItemImplFromJson(json);

  @override
  final String pallet;
  @override
  final String status;
  @override
  final int stacking_level;
  @override
  final int is_full;
  final List<Product>? _products;
  @override
  @JsonKey(fromJson: _productsFromJson, toJson: _productsToJson)
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GridItem(pallet: $pallet, status: $status, stacking_level: $stacking_level, is_full: $is_full, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GridItemImpl &&
            (identical(other.pallet, pallet) || other.pallet == pallet) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.stacking_level, stacking_level) ||
                other.stacking_level == stacking_level) &&
            (identical(other.is_full, is_full) || other.is_full == is_full) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pallet, status, stacking_level,
      is_full, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GridItemImplCopyWith<_$GridItemImpl> get copyWith =>
      __$$GridItemImplCopyWithImpl<_$GridItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GridItemImplToJson(
      this,
    );
  }
}

abstract class _GridItem implements GridItem {
  const factory _GridItem(
      {required final String pallet,
      required final String status,
      required final int stacking_level,
      required final int is_full,
      @JsonKey(fromJson: _productsFromJson, toJson: _productsToJson)
      final List<Product>? products}) = _$GridItemImpl;

  factory _GridItem.fromJson(Map<String, dynamic> json) =
      _$GridItemImpl.fromJson;

  @override
  String get pallet;
  @override
  String get status;
  @override
  int get stacking_level;
  @override
  int get is_full;
  @override
  @JsonKey(fromJson: _productsFromJson, toJson: _productsToJson)
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$GridItemImplCopyWith<_$GridItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get product_id => throw _privateConstructorUsedError;
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
      {int product_id,
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
    Object? product_id = null,
    Object? qty = null,
    Object? unit = null,
    Object? expiry_date = freezed,
    Object? product_name = null,
    Object? indent_number = null,
  }) {
    return _then(_value.copyWith(
      product_id: null == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
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
      {int product_id,
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
    Object? product_id = null,
    Object? qty = null,
    Object? unit = null,
    Object? expiry_date = freezed,
    Object? product_name = null,
    Object? indent_number = null,
  }) {
    return _then(_$ProductImpl(
      product_id: null == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
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
      {required this.product_id,
      required this.qty,
      required this.unit,
      this.expiry_date,
      required this.product_name,
      required this.indent_number});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int product_id;
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
    return 'Product(product_id: $product_id, qty: $qty, unit: $unit, expiry_date: $expiry_date, product_name: $product_name, indent_number: $indent_number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
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
  int get hashCode => Object.hash(runtimeType, product_id, qty, unit,
      expiry_date, product_name, indent_number);

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
      {required final int product_id,
      required final int qty,
      required final int unit,
      final DateTime? expiry_date,
      required final String product_name,
      required final String indent_number}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get product_id;
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
