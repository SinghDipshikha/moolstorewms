// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dockProduct.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DockProduct _$DockProductFromJson(Map<String, dynamic> json) {
  return _DockProduct.fromJson(json);
}

/// @nodoc
mixin _$DockProduct {
  @HiveField(0, defaultValue: null)
  int? get product_id => throw _privateConstructorUsedError;
  @HiveField(1)
  int get qty => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: 0)
  int get unitToUpload => throw _privateConstructorUsedError;
  @HiveField(3)
  int get unit => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: null)
  DateTime? get expiry_date => throw _privateConstructorUsedError;
  @HiveField(5, defaultValue: "--")
  String get product_name => throw _privateConstructorUsedError;
  @HiveField(6, defaultValue: null)
  String? get indent_number => throw _privateConstructorUsedError;
  @HiveField(7, defaultValue: null)
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DockProductCopyWith<DockProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DockProductCopyWith<$Res> {
  factory $DockProductCopyWith(
          DockProduct value, $Res Function(DockProduct) then) =
      _$DockProductCopyWithImpl<$Res, DockProduct>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: null) int? product_id,
      @HiveField(1) int qty,
      @HiveField(2, defaultValue: 0) int unitToUpload,
      @HiveField(3) int unit,
      @HiveField(4, defaultValue: null) DateTime? expiry_date,
      @HiveField(5, defaultValue: "--") String product_name,
      @HiveField(6, defaultValue: null) String? indent_number,
      @HiveField(7, defaultValue: null) int? id});
}

/// @nodoc
class _$DockProductCopyWithImpl<$Res, $Val extends DockProduct>
    implements $DockProductCopyWith<$Res> {
  _$DockProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? qty = null,
    Object? unitToUpload = null,
    Object? unit = null,
    Object? expiry_date = freezed,
    Object? product_name = null,
    Object? indent_number = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      unitToUpload: null == unitToUpload
          ? _value.unitToUpload
          : unitToUpload // ignore: cast_nullable_to_non_nullable
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
      indent_number: freezed == indent_number
          ? _value.indent_number
          : indent_number // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DockProductImplCopyWith<$Res>
    implements $DockProductCopyWith<$Res> {
  factory _$$DockProductImplCopyWith(
          _$DockProductImpl value, $Res Function(_$DockProductImpl) then) =
      __$$DockProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: null) int? product_id,
      @HiveField(1) int qty,
      @HiveField(2, defaultValue: 0) int unitToUpload,
      @HiveField(3) int unit,
      @HiveField(4, defaultValue: null) DateTime? expiry_date,
      @HiveField(5, defaultValue: "--") String product_name,
      @HiveField(6, defaultValue: null) String? indent_number,
      @HiveField(7, defaultValue: null) int? id});
}

/// @nodoc
class __$$DockProductImplCopyWithImpl<$Res>
    extends _$DockProductCopyWithImpl<$Res, _$DockProductImpl>
    implements _$$DockProductImplCopyWith<$Res> {
  __$$DockProductImplCopyWithImpl(
      _$DockProductImpl _value, $Res Function(_$DockProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? qty = null,
    Object? unitToUpload = null,
    Object? unit = null,
    Object? expiry_date = freezed,
    Object? product_name = null,
    Object? indent_number = freezed,
    Object? id = freezed,
  }) {
    return _then(_$DockProductImpl(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      unitToUpload: null == unitToUpload
          ? _value.unitToUpload
          : unitToUpload // ignore: cast_nullable_to_non_nullable
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
      indent_number: freezed == indent_number
          ? _value.indent_number
          : indent_number // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DockProductImpl implements _DockProduct {
  const _$DockProductImpl(
      {@HiveField(0, defaultValue: null) this.product_id = null,
      @HiveField(1) required this.qty,
      @HiveField(2, defaultValue: 0) this.unitToUpload = 0,
      @HiveField(3) required this.unit,
      @HiveField(4, defaultValue: null) this.expiry_date,
      @HiveField(5, defaultValue: "--") this.product_name = "--",
      @HiveField(6, defaultValue: null) this.indent_number,
      @HiveField(7, defaultValue: null) this.id});

  factory _$DockProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$DockProductImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0, defaultValue: null)
  final int? product_id;
  @override
  @HiveField(1)
  final int qty;
  @override
  @JsonKey()
  @HiveField(2, defaultValue: 0)
  final int unitToUpload;
  @override
  @HiveField(3)
  final int unit;
  @override
  @HiveField(4, defaultValue: null)
  final DateTime? expiry_date;
  @override
  @JsonKey()
  @HiveField(5, defaultValue: "--")
  final String product_name;
  @override
  @HiveField(6, defaultValue: null)
  final String? indent_number;
  @override
  @HiveField(7, defaultValue: null)
  final int? id;

  @override
  String toString() {
    return 'DockProduct(product_id: $product_id, qty: $qty, unitToUpload: $unitToUpload, unit: $unit, expiry_date: $expiry_date, product_name: $product_name, indent_number: $indent_number, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DockProductImpl &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.unitToUpload, unitToUpload) ||
                other.unitToUpload == unitToUpload) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.expiry_date, expiry_date) ||
                other.expiry_date == expiry_date) &&
            (identical(other.product_name, product_name) ||
                other.product_name == product_name) &&
            (identical(other.indent_number, indent_number) ||
                other.indent_number == indent_number) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product_id, qty, unitToUpload,
      unit, expiry_date, product_name, indent_number, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DockProductImplCopyWith<_$DockProductImpl> get copyWith =>
      __$$DockProductImplCopyWithImpl<_$DockProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DockProductImplToJson(
      this,
    );
  }
}

abstract class _DockProduct implements DockProduct {
  const factory _DockProduct(
      {@HiveField(0, defaultValue: null) final int? product_id,
      @HiveField(1) required final int qty,
      @HiveField(2, defaultValue: 0) final int unitToUpload,
      @HiveField(3) required final int unit,
      @HiveField(4, defaultValue: null) final DateTime? expiry_date,
      @HiveField(5, defaultValue: "--") final String product_name,
      @HiveField(6, defaultValue: null) final String? indent_number,
      @HiveField(7, defaultValue: null) final int? id}) = _$DockProductImpl;

  factory _DockProduct.fromJson(Map<String, dynamic> json) =
      _$DockProductImpl.fromJson;

  @override
  @HiveField(0, defaultValue: null)
  int? get product_id;
  @override
  @HiveField(1)
  int get qty;
  @override
  @HiveField(2, defaultValue: 0)
  int get unitToUpload;
  @override
  @HiveField(3)
  int get unit;
  @override
  @HiveField(4, defaultValue: null)
  DateTime? get expiry_date;
  @override
  @HiveField(5, defaultValue: "--")
  String get product_name;
  @override
  @HiveField(6, defaultValue: null)
  String? get indent_number;
  @override
  @HiveField(7, defaultValue: null)
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$DockProductImplCopyWith<_$DockProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
