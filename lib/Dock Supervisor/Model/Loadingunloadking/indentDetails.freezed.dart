// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'indentDetails.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IndentDetails _$IndentDetailsFromJson(Map<String, dynamic> json) {
  return _IndentDetails.fromJson(json);
}

/// @nodoc
mixin _$IndentDetails {
  String? get indent_number => throw _privateConstructorUsedError;
  int? get warehouse_id => throw _privateConstructorUsedError;
  String? get in_out_status => throw _privateConstructorUsedError;
  List<ProductDetail>? get product_details =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndentDetailsCopyWith<IndentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndentDetailsCopyWith<$Res> {
  factory $IndentDetailsCopyWith(
          IndentDetails value, $Res Function(IndentDetails) then) =
      _$IndentDetailsCopyWithImpl<$Res, IndentDetails>;
  @useResult
  $Res call(
      {String? indent_number,
      int? warehouse_id,
      String? in_out_status,
      List<ProductDetail>? product_details});
}

/// @nodoc
class _$IndentDetailsCopyWithImpl<$Res, $Val extends IndentDetails>
    implements $IndentDetailsCopyWith<$Res> {
  _$IndentDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indent_number = freezed,
    Object? warehouse_id = freezed,
    Object? in_out_status = freezed,
    Object? product_details = freezed,
  }) {
    return _then(_value.copyWith(
      indent_number: freezed == indent_number
          ? _value.indent_number
          : indent_number // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
      in_out_status: freezed == in_out_status
          ? _value.in_out_status
          : in_out_status // ignore: cast_nullable_to_non_nullable
              as String?,
      product_details: freezed == product_details
          ? _value.product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as List<ProductDetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndentDetailsImplCopyWith<$Res>
    implements $IndentDetailsCopyWith<$Res> {
  factory _$$IndentDetailsImplCopyWith(
          _$IndentDetailsImpl value, $Res Function(_$IndentDetailsImpl) then) =
      __$$IndentDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? indent_number,
      int? warehouse_id,
      String? in_out_status,
      List<ProductDetail>? product_details});
}

/// @nodoc
class __$$IndentDetailsImplCopyWithImpl<$Res>
    extends _$IndentDetailsCopyWithImpl<$Res, _$IndentDetailsImpl>
    implements _$$IndentDetailsImplCopyWith<$Res> {
  __$$IndentDetailsImplCopyWithImpl(
      _$IndentDetailsImpl _value, $Res Function(_$IndentDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indent_number = freezed,
    Object? warehouse_id = freezed,
    Object? in_out_status = freezed,
    Object? product_details = freezed,
  }) {
    return _then(_$IndentDetailsImpl(
      indent_number: freezed == indent_number
          ? _value.indent_number
          : indent_number // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouse_id: freezed == warehouse_id
          ? _value.warehouse_id
          : warehouse_id // ignore: cast_nullable_to_non_nullable
              as int?,
      in_out_status: freezed == in_out_status
          ? _value.in_out_status
          : in_out_status // ignore: cast_nullable_to_non_nullable
              as String?,
      product_details: freezed == product_details
          ? _value._product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as List<ProductDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndentDetailsImpl implements _IndentDetails {
  const _$IndentDetailsImpl(
      {this.indent_number,
      this.warehouse_id,
      this.in_out_status,
      final List<ProductDetail>? product_details})
      : _product_details = product_details;

  factory _$IndentDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndentDetailsImplFromJson(json);

  @override
  final String? indent_number;
  @override
  final int? warehouse_id;
  @override
  final String? in_out_status;
  final List<ProductDetail>? _product_details;
  @override
  List<ProductDetail>? get product_details {
    final value = _product_details;
    if (value == null) return null;
    if (_product_details is EqualUnmodifiableListView) return _product_details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IndentDetails(indent_number: $indent_number, warehouse_id: $warehouse_id, in_out_status: $in_out_status, product_details: $product_details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndentDetailsImpl &&
            (identical(other.indent_number, indent_number) ||
                other.indent_number == indent_number) &&
            (identical(other.warehouse_id, warehouse_id) ||
                other.warehouse_id == warehouse_id) &&
            (identical(other.in_out_status, in_out_status) ||
                other.in_out_status == in_out_status) &&
            const DeepCollectionEquality()
                .equals(other._product_details, _product_details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, indent_number, warehouse_id,
      in_out_status, const DeepCollectionEquality().hash(_product_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndentDetailsImplCopyWith<_$IndentDetailsImpl> get copyWith =>
      __$$IndentDetailsImplCopyWithImpl<_$IndentDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndentDetailsImplToJson(
      this,
    );
  }
}

abstract class _IndentDetails implements IndentDetails {
  const factory _IndentDetails(
      {final String? indent_number,
      final int? warehouse_id,
      final String? in_out_status,
      final List<ProductDetail>? product_details}) = _$IndentDetailsImpl;

  factory _IndentDetails.fromJson(Map<String, dynamic> json) =
      _$IndentDetailsImpl.fromJson;

  @override
  String? get indent_number;
  @override
  int? get warehouse_id;
  @override
  String? get in_out_status;
  @override
  List<ProductDetail>? get product_details;
  @override
  @JsonKey(ignore: true)
  _$$IndentDetailsImplCopyWith<_$IndentDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) {
  return _ProductDetail.fromJson(json);
}

/// @nodoc
mixin _$ProductDetail {
  int get product_id => throw _privateConstructorUsedError;
  String get product_name => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  int get unit => throw _privateConstructorUsedError;
  DateTime? get expiry_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailCopyWith<ProductDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailCopyWith<$Res> {
  factory $ProductDetailCopyWith(
          ProductDetail value, $Res Function(ProductDetail) then) =
      _$ProductDetailCopyWithImpl<$Res, ProductDetail>;
  @useResult
  $Res call(
      {int product_id,
      String product_name,
      int qty,
      int unit,
      DateTime? expiry_date});
}

/// @nodoc
class _$ProductDetailCopyWithImpl<$Res, $Val extends ProductDetail>
    implements $ProductDetailCopyWith<$Res> {
  _$ProductDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = null,
    Object? product_name = null,
    Object? qty = null,
    Object? unit = null,
    Object? expiry_date = freezed,
  }) {
    return _then(_value.copyWith(
      product_id: null == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int,
      product_name: null == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailImplCopyWith<$Res>
    implements $ProductDetailCopyWith<$Res> {
  factory _$$ProductDetailImplCopyWith(
          _$ProductDetailImpl value, $Res Function(_$ProductDetailImpl) then) =
      __$$ProductDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int product_id,
      String product_name,
      int qty,
      int unit,
      DateTime? expiry_date});
}

/// @nodoc
class __$$ProductDetailImplCopyWithImpl<$Res>
    extends _$ProductDetailCopyWithImpl<$Res, _$ProductDetailImpl>
    implements _$$ProductDetailImplCopyWith<$Res> {
  __$$ProductDetailImplCopyWithImpl(
      _$ProductDetailImpl _value, $Res Function(_$ProductDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = null,
    Object? product_name = null,
    Object? qty = null,
    Object? unit = null,
    Object? expiry_date = freezed,
  }) {
    return _then(_$ProductDetailImpl(
      product_id: null == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int,
      product_name: null == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailImpl implements _ProductDetail {
  const _$ProductDetailImpl(
      {required this.product_id,
      required this.product_name,
      required this.qty,
      required this.unit,
      this.expiry_date});

  factory _$ProductDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailImplFromJson(json);

  @override
  final int product_id;
  @override
  final String product_name;
  @override
  final int qty;
  @override
  final int unit;
  @override
  final DateTime? expiry_date;

  @override
  String toString() {
    return 'ProductDetail(product_id: $product_id, product_name: $product_name, qty: $qty, unit: $unit, expiry_date: $expiry_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailImpl &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.product_name, product_name) ||
                other.product_name == product_name) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.expiry_date, expiry_date) ||
                other.expiry_date == expiry_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, product_id, product_name, qty, unit, expiry_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailImplCopyWith<_$ProductDetailImpl> get copyWith =>
      __$$ProductDetailImplCopyWithImpl<_$ProductDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailImplToJson(
      this,
    );
  }
}

abstract class _ProductDetail implements ProductDetail {
  const factory _ProductDetail(
      {required final int product_id,
      required final String product_name,
      required final int qty,
      required final int unit,
      final DateTime? expiry_date}) = _$ProductDetailImpl;

  factory _ProductDetail.fromJson(Map<String, dynamic> json) =
      _$ProductDetailImpl.fromJson;

  @override
  int get product_id;
  @override
  String get product_name;
  @override
  int get qty;
  @override
  int get unit;
  @override
  DateTime? get expiry_date;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailImplCopyWith<_$ProductDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
