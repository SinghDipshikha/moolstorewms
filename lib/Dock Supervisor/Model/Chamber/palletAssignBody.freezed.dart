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
  int? get id => throw _privateConstructorUsedError;
  String? get pallet_coordinate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get warehouse_id => throw _privateConstructorUsedError;
  int get chamber_id => throw _privateConstructorUsedError;
  int get is_full => throw _privateConstructorUsedError;
  List<DockProduct>? get products => throw _privateConstructorUsedError;

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
      {int? id,
      String? pallet_coordinate,
      String status,
      int warehouse_id,
      int chamber_id,
      int is_full,
      List<DockProduct>? products});
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
    Object? id = freezed,
    Object? pallet_coordinate = freezed,
    Object? status = null,
    Object? warehouse_id = null,
    Object? chamber_id = null,
    Object? is_full = null,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pallet_coordinate: freezed == pallet_coordinate
          ? _value.pallet_coordinate
          : pallet_coordinate // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<DockProduct>?,
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
      {int? id,
      String? pallet_coordinate,
      String status,
      int warehouse_id,
      int chamber_id,
      int is_full,
      List<DockProduct>? products});
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
    Object? id = freezed,
    Object? pallet_coordinate = freezed,
    Object? status = null,
    Object? warehouse_id = null,
    Object? chamber_id = null,
    Object? is_full = null,
    Object? products = freezed,
  }) {
    return _then(_$PalletAssignBodyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pallet_coordinate: freezed == pallet_coordinate
          ? _value.pallet_coordinate
          : pallet_coordinate // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<DockProduct>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PalletAssignBodyImpl implements _PalletAssignBody {
  const _$PalletAssignBodyImpl(
      {this.id,
      this.pallet_coordinate,
      this.status = "IN",
      required this.warehouse_id,
      required this.chamber_id,
      this.is_full = 0,
      final List<DockProduct>? products})
      : _products = products;

  factory _$PalletAssignBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PalletAssignBodyImplFromJson(json);

  @override
  final int? id;
  @override
  final String? pallet_coordinate;
  @override
  @JsonKey()
  final String status;
  @override
  final int warehouse_id;
  @override
  final int chamber_id;
  @override
  @JsonKey()
  final int is_full;
  final List<DockProduct>? _products;
  @override
  List<DockProduct>? get products {
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
      {final int? id,
      final String? pallet_coordinate,
      final String status,
      required final int warehouse_id,
      required final int chamber_id,
      final int is_full,
      final List<DockProduct>? products}) = _$PalletAssignBodyImpl;

  factory _PalletAssignBody.fromJson(Map<String, dynamic> json) =
      _$PalletAssignBodyImpl.fromJson;

  @override
  int? get id;
  @override
  String? get pallet_coordinate;
  @override
  String get status;
  @override
  int get warehouse_id;
  @override
  int get chamber_id;
  @override
  int get is_full;
  @override
  List<DockProduct>? get products;
  @override
  @JsonKey(ignore: true)
  _$$PalletAssignBodyImplCopyWith<_$PalletAssignBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
