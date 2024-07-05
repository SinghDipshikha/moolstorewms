// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unloadingMaterial.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnloadingMaterial _$UnloadingMaterialFromJson(Map<String, dynamic> json) {
  return _UnloadingMaterial.fromJson(json);
}

/// @nodoc
mixin _$UnloadingMaterial {
  String? get type => throw _privateConstructorUsedError;
  String? get indent_number => throw _privateConstructorUsedError;
  int? get type_id => throw _privateConstructorUsedError;
  int? get dock_id => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  List<MaterialProductDetail>? get product_details =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnloadingMaterialCopyWith<UnloadingMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnloadingMaterialCopyWith<$Res> {
  factory $UnloadingMaterialCopyWith(
          UnloadingMaterial value, $Res Function(UnloadingMaterial) then) =
      _$UnloadingMaterialCopyWithImpl<$Res, UnloadingMaterial>;
  @useResult
  $Res call(
      {String? type,
      String? indent_number,
      int? type_id,
      int? dock_id,
      int? user_id,
      List<MaterialProductDetail>? product_details});
}

/// @nodoc
class _$UnloadingMaterialCopyWithImpl<$Res, $Val extends UnloadingMaterial>
    implements $UnloadingMaterialCopyWith<$Res> {
  _$UnloadingMaterialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? indent_number = freezed,
    Object? type_id = freezed,
    Object? dock_id = freezed,
    Object? user_id = freezed,
    Object? product_details = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      indent_number: freezed == indent_number
          ? _value.indent_number
          : indent_number // ignore: cast_nullable_to_non_nullable
              as String?,
      type_id: freezed == type_id
          ? _value.type_id
          : type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      dock_id: freezed == dock_id
          ? _value.dock_id
          : dock_id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_details: freezed == product_details
          ? _value.product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as List<MaterialProductDetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnloadingMaterialImplCopyWith<$Res>
    implements $UnloadingMaterialCopyWith<$Res> {
  factory _$$UnloadingMaterialImplCopyWith(_$UnloadingMaterialImpl value,
          $Res Function(_$UnloadingMaterialImpl) then) =
      __$$UnloadingMaterialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      String? indent_number,
      int? type_id,
      int? dock_id,
      int? user_id,
      List<MaterialProductDetail>? product_details});
}

/// @nodoc
class __$$UnloadingMaterialImplCopyWithImpl<$Res>
    extends _$UnloadingMaterialCopyWithImpl<$Res, _$UnloadingMaterialImpl>
    implements _$$UnloadingMaterialImplCopyWith<$Res> {
  __$$UnloadingMaterialImplCopyWithImpl(_$UnloadingMaterialImpl _value,
      $Res Function(_$UnloadingMaterialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? indent_number = freezed,
    Object? type_id = freezed,
    Object? dock_id = freezed,
    Object? user_id = freezed,
    Object? product_details = freezed,
  }) {
    return _then(_$UnloadingMaterialImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      indent_number: freezed == indent_number
          ? _value.indent_number
          : indent_number // ignore: cast_nullable_to_non_nullable
              as String?,
      type_id: freezed == type_id
          ? _value.type_id
          : type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      dock_id: freezed == dock_id
          ? _value.dock_id
          : dock_id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_details: freezed == product_details
          ? _value._product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as List<MaterialProductDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnloadingMaterialImpl implements _UnloadingMaterial {
  const _$UnloadingMaterialImpl(
      {this.type,
      this.indent_number,
      this.type_id,
      this.dock_id,
      this.user_id,
      final List<MaterialProductDetail>? product_details})
      : _product_details = product_details;

  factory _$UnloadingMaterialImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnloadingMaterialImplFromJson(json);

  @override
  final String? type;
  @override
  final String? indent_number;
  @override
  final int? type_id;
  @override
  final int? dock_id;
  @override
  final int? user_id;
  final List<MaterialProductDetail>? _product_details;
  @override
  List<MaterialProductDetail>? get product_details {
    final value = _product_details;
    if (value == null) return null;
    if (_product_details is EqualUnmodifiableListView) return _product_details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UnloadingMaterial(type: $type, indent_number: $indent_number, type_id: $type_id, dock_id: $dock_id, user_id: $user_id, product_details: $product_details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnloadingMaterialImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.indent_number, indent_number) ||
                other.indent_number == indent_number) &&
            (identical(other.type_id, type_id) || other.type_id == type_id) &&
            (identical(other.dock_id, dock_id) || other.dock_id == dock_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            const DeepCollectionEquality()
                .equals(other._product_details, _product_details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, indent_number, type_id,
      dock_id, user_id, const DeepCollectionEquality().hash(_product_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnloadingMaterialImplCopyWith<_$UnloadingMaterialImpl> get copyWith =>
      __$$UnloadingMaterialImplCopyWithImpl<_$UnloadingMaterialImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnloadingMaterialImplToJson(
      this,
    );
  }
}

abstract class _UnloadingMaterial implements UnloadingMaterial {
  const factory _UnloadingMaterial(
          {final String? type,
          final String? indent_number,
          final int? type_id,
          final int? dock_id,
          final int? user_id,
          final List<MaterialProductDetail>? product_details}) =
      _$UnloadingMaterialImpl;

  factory _UnloadingMaterial.fromJson(Map<String, dynamic> json) =
      _$UnloadingMaterialImpl.fromJson;

  @override
  String? get type;
  @override
  String? get indent_number;
  @override
  int? get type_id;
  @override
  int? get dock_id;
  @override
  int? get user_id;
  @override
  List<MaterialProductDetail>? get product_details;
  @override
  @JsonKey(ignore: true)
  _$$UnloadingMaterialImplCopyWith<_$UnloadingMaterialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MaterialProductDetail _$MaterialProductDetailFromJson(
    Map<String, dynamic> json) {
  return _MaterialProductDetail.fromJson(json);
}

/// @nodoc
mixin _$MaterialProductDetail {
  int get product_id => throw _privateConstructorUsedError;
  String get product_name => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  List<dynamic>? get sample_images => throw _privateConstructorUsedError;
  List<dynamic>? get damage_images => throw _privateConstructorUsedError;
  String? get damage_reason => throw _privateConstructorUsedError;
  int get unit => throw _privateConstructorUsedError;
  bool get isDamaged => throw _privateConstructorUsedError;
  bool get isUnitsDifferent => throw _privateConstructorUsedError;
  DateTime? get expiry_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaterialProductDetailCopyWith<MaterialProductDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialProductDetailCopyWith<$Res> {
  factory $MaterialProductDetailCopyWith(MaterialProductDetail value,
          $Res Function(MaterialProductDetail) then) =
      _$MaterialProductDetailCopyWithImpl<$Res, MaterialProductDetail>;
  @useResult
  $Res call(
      {int product_id,
      String product_name,
      int qty,
      List<dynamic>? sample_images,
      List<dynamic>? damage_images,
      String? damage_reason,
      int unit,
      bool isDamaged,
      bool isUnitsDifferent,
      DateTime? expiry_date});
}

/// @nodoc
class _$MaterialProductDetailCopyWithImpl<$Res,
        $Val extends MaterialProductDetail>
    implements $MaterialProductDetailCopyWith<$Res> {
  _$MaterialProductDetailCopyWithImpl(this._value, this._then);

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
    Object? sample_images = freezed,
    Object? damage_images = freezed,
    Object? damage_reason = freezed,
    Object? unit = null,
    Object? isDamaged = null,
    Object? isUnitsDifferent = null,
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
      sample_images: freezed == sample_images
          ? _value.sample_images
          : sample_images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      damage_images: freezed == damage_images
          ? _value.damage_images
          : damage_images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      damage_reason: freezed == damage_reason
          ? _value.damage_reason
          : damage_reason // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as int,
      isDamaged: null == isDamaged
          ? _value.isDamaged
          : isDamaged // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnitsDifferent: null == isUnitsDifferent
          ? _value.isUnitsDifferent
          : isUnitsDifferent // ignore: cast_nullable_to_non_nullable
              as bool,
      expiry_date: freezed == expiry_date
          ? _value.expiry_date
          : expiry_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaterialProductDetailImplCopyWith<$Res>
    implements $MaterialProductDetailCopyWith<$Res> {
  factory _$$MaterialProductDetailImplCopyWith(
          _$MaterialProductDetailImpl value,
          $Res Function(_$MaterialProductDetailImpl) then) =
      __$$MaterialProductDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int product_id,
      String product_name,
      int qty,
      List<dynamic>? sample_images,
      List<dynamic>? damage_images,
      String? damage_reason,
      int unit,
      bool isDamaged,
      bool isUnitsDifferent,
      DateTime? expiry_date});
}

/// @nodoc
class __$$MaterialProductDetailImplCopyWithImpl<$Res>
    extends _$MaterialProductDetailCopyWithImpl<$Res,
        _$MaterialProductDetailImpl>
    implements _$$MaterialProductDetailImplCopyWith<$Res> {
  __$$MaterialProductDetailImplCopyWithImpl(_$MaterialProductDetailImpl _value,
      $Res Function(_$MaterialProductDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = null,
    Object? product_name = null,
    Object? qty = null,
    Object? sample_images = freezed,
    Object? damage_images = freezed,
    Object? damage_reason = freezed,
    Object? unit = null,
    Object? isDamaged = null,
    Object? isUnitsDifferent = null,
    Object? expiry_date = freezed,
  }) {
    return _then(_$MaterialProductDetailImpl(
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
      sample_images: freezed == sample_images
          ? _value._sample_images
          : sample_images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      damage_images: freezed == damage_images
          ? _value._damage_images
          : damage_images // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      damage_reason: freezed == damage_reason
          ? _value.damage_reason
          : damage_reason // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as int,
      isDamaged: null == isDamaged
          ? _value.isDamaged
          : isDamaged // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnitsDifferent: null == isUnitsDifferent
          ? _value.isUnitsDifferent
          : isUnitsDifferent // ignore: cast_nullable_to_non_nullable
              as bool,
      expiry_date: freezed == expiry_date
          ? _value.expiry_date
          : expiry_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaterialProductDetailImpl implements _MaterialProductDetail {
  const _$MaterialProductDetailImpl(
      {required this.product_id,
      required this.product_name,
      required this.qty,
      final List<dynamic>? sample_images,
      final List<dynamic>? damage_images,
      this.damage_reason,
      required this.unit,
      this.isDamaged = false,
      this.isUnitsDifferent = false,
      this.expiry_date})
      : _sample_images = sample_images,
        _damage_images = damage_images;

  factory _$MaterialProductDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaterialProductDetailImplFromJson(json);

  @override
  final int product_id;
  @override
  final String product_name;
  @override
  final int qty;
  final List<dynamic>? _sample_images;
  @override
  List<dynamic>? get sample_images {
    final value = _sample_images;
    if (value == null) return null;
    if (_sample_images is EqualUnmodifiableListView) return _sample_images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _damage_images;
  @override
  List<dynamic>? get damage_images {
    final value = _damage_images;
    if (value == null) return null;
    if (_damage_images is EqualUnmodifiableListView) return _damage_images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? damage_reason;
  @override
  final int unit;
  @override
  @JsonKey()
  final bool isDamaged;
  @override
  @JsonKey()
  final bool isUnitsDifferent;
  @override
  final DateTime? expiry_date;

  @override
  String toString() {
    return 'MaterialProductDetail(product_id: $product_id, product_name: $product_name, qty: $qty, sample_images: $sample_images, damage_images: $damage_images, damage_reason: $damage_reason, unit: $unit, isDamaged: $isDamaged, isUnitsDifferent: $isUnitsDifferent, expiry_date: $expiry_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialProductDetailImpl &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.product_name, product_name) ||
                other.product_name == product_name) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            const DeepCollectionEquality()
                .equals(other._sample_images, _sample_images) &&
            const DeepCollectionEquality()
                .equals(other._damage_images, _damage_images) &&
            (identical(other.damage_reason, damage_reason) ||
                other.damage_reason == damage_reason) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.isDamaged, isDamaged) ||
                other.isDamaged == isDamaged) &&
            (identical(other.isUnitsDifferent, isUnitsDifferent) ||
                other.isUnitsDifferent == isUnitsDifferent) &&
            (identical(other.expiry_date, expiry_date) ||
                other.expiry_date == expiry_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      product_id,
      product_name,
      qty,
      const DeepCollectionEquality().hash(_sample_images),
      const DeepCollectionEquality().hash(_damage_images),
      damage_reason,
      unit,
      isDamaged,
      isUnitsDifferent,
      expiry_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialProductDetailImplCopyWith<_$MaterialProductDetailImpl>
      get copyWith => __$$MaterialProductDetailImplCopyWithImpl<
          _$MaterialProductDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaterialProductDetailImplToJson(
      this,
    );
  }
}

abstract class _MaterialProductDetail implements MaterialProductDetail {
  const factory _MaterialProductDetail(
      {required final int product_id,
      required final String product_name,
      required final int qty,
      final List<dynamic>? sample_images,
      final List<dynamic>? damage_images,
      final String? damage_reason,
      required final int unit,
      final bool isDamaged,
      final bool isUnitsDifferent,
      final DateTime? expiry_date}) = _$MaterialProductDetailImpl;

  factory _MaterialProductDetail.fromJson(Map<String, dynamic> json) =
      _$MaterialProductDetailImpl.fromJson;

  @override
  int get product_id;
  @override
  String get product_name;
  @override
  int get qty;
  @override
  List<dynamic>? get sample_images;
  @override
  List<dynamic>? get damage_images;
  @override
  String? get damage_reason;
  @override
  int get unit;
  @override
  bool get isDamaged;
  @override
  bool get isUnitsDifferent;
  @override
  DateTime? get expiry_date;
  @override
  @JsonKey(ignore: true)
  _$$MaterialProductDetailImplCopyWith<_$MaterialProductDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
