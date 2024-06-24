// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addProduct.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductEntry _$ProductEntryFromJson(Map<String, dynamic> json) {
  return _GetAllProductEntryBySecurityGaurd.fromJson(json);
}

/// @nodoc
mixin _$ProductEntry {
  int? get product_id => throw _privateConstructorUsedError;
  String? get product_name => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;
  int? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductEntryCopyWith<ProductEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEntryCopyWith<$Res> {
  factory $ProductEntryCopyWith(
          ProductEntry value, $Res Function(ProductEntry) then) =
      _$ProductEntryCopyWithImpl<$Res, ProductEntry>;
  @useResult
  $Res call({int? product_id, String? product_name, int? qty, int? unit});
}

/// @nodoc
class _$ProductEntryCopyWithImpl<$Res, $Val extends ProductEntry>
    implements $ProductEntryCopyWith<$Res> {
  _$ProductEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? product_name = freezed,
    Object? qty = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_name: freezed == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllProductEntryBySecurityGaurdImplCopyWith<$Res>
    implements $ProductEntryCopyWith<$Res> {
  factory _$$GetAllProductEntryBySecurityGaurdImplCopyWith(
          _$GetAllProductEntryBySecurityGaurdImpl value,
          $Res Function(_$GetAllProductEntryBySecurityGaurdImpl) then) =
      __$$GetAllProductEntryBySecurityGaurdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? product_id, String? product_name, int? qty, int? unit});
}

/// @nodoc
class __$$GetAllProductEntryBySecurityGaurdImplCopyWithImpl<$Res>
    extends _$ProductEntryCopyWithImpl<$Res,
        _$GetAllProductEntryBySecurityGaurdImpl>
    implements _$$GetAllProductEntryBySecurityGaurdImplCopyWith<$Res> {
  __$$GetAllProductEntryBySecurityGaurdImplCopyWithImpl(
      _$GetAllProductEntryBySecurityGaurdImpl _value,
      $Res Function(_$GetAllProductEntryBySecurityGaurdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? product_name = freezed,
    Object? qty = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$GetAllProductEntryBySecurityGaurdImpl(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_name: freezed == product_name
          ? _value.product_name
          : product_name // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllProductEntryBySecurityGaurdImpl
    implements _GetAllProductEntryBySecurityGaurd {
  const _$GetAllProductEntryBySecurityGaurdImpl(
      {this.product_id, this.product_name, this.qty, this.unit});

  factory _$GetAllProductEntryBySecurityGaurdImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllProductEntryBySecurityGaurdImplFromJson(json);

  @override
  final int? product_id;
  @override
  final String? product_name;
  @override
  final int? qty;
  @override
  final int? unit;

  @override
  String toString() {
    return 'ProductEntry(product_id: $product_id, product_name: $product_name, qty: $qty, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllProductEntryBySecurityGaurdImpl &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.product_name, product_name) ||
                other.product_name == product_name) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, product_id, product_name, qty, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllProductEntryBySecurityGaurdImplCopyWith<
          _$GetAllProductEntryBySecurityGaurdImpl>
      get copyWith => __$$GetAllProductEntryBySecurityGaurdImplCopyWithImpl<
          _$GetAllProductEntryBySecurityGaurdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllProductEntryBySecurityGaurdImplToJson(
      this,
    );
  }
}

abstract class _GetAllProductEntryBySecurityGaurd implements ProductEntry {
  const factory _GetAllProductEntryBySecurityGaurd(
      {final int? product_id,
      final String? product_name,
      final int? qty,
      final int? unit}) = _$GetAllProductEntryBySecurityGaurdImpl;

  factory _GetAllProductEntryBySecurityGaurd.fromJson(
          Map<String, dynamic> json) =
      _$GetAllProductEntryBySecurityGaurdImpl.fromJson;

  @override
  int? get product_id;
  @override
  String? get product_name;
  @override
  int? get qty;
  @override
  int? get unit;
  @override
  @JsonKey(ignore: true)
  _$$GetAllProductEntryBySecurityGaurdImplCopyWith<
          _$GetAllProductEntryBySecurityGaurdImpl>
      get copyWith => throw _privateConstructorUsedError;
}
