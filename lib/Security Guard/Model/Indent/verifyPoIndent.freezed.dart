// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verifyPoIndent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyPoIndent _$VerifyPoIndentFromJson(Map<String, dynamic> json) {
  return _VerifyPoIndent.fromJson(json);
}

/// @nodoc
mixin _$VerifyPoIndent {
  String? get status => throw _privateConstructorUsedError;
  int? get sellerPurchaseOrderId => throw _privateConstructorUsedError;
  String? get vehicleNumber => throw _privateConstructorUsedError;
  String? get indentNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyPoIndentCopyWith<VerifyPoIndent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPoIndentCopyWith<$Res> {
  factory $VerifyPoIndentCopyWith(
          VerifyPoIndent value, $Res Function(VerifyPoIndent) then) =
      _$VerifyPoIndentCopyWithImpl<$Res, VerifyPoIndent>;
  @useResult
  $Res call(
      {String? status,
      int? sellerPurchaseOrderId,
      String? vehicleNumber,
      String? indentNumber});
}

/// @nodoc
class _$VerifyPoIndentCopyWithImpl<$Res, $Val extends VerifyPoIndent>
    implements $VerifyPoIndentCopyWith<$Res> {
  _$VerifyPoIndentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? sellerPurchaseOrderId = freezed,
    Object? vehicleNumber = freezed,
    Object? indentNumber = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerPurchaseOrderId: freezed == sellerPurchaseOrderId
          ? _value.sellerPurchaseOrderId
          : sellerPurchaseOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      indentNumber: freezed == indentNumber
          ? _value.indentNumber
          : indentNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyPoIndentImplCopyWith<$Res>
    implements $VerifyPoIndentCopyWith<$Res> {
  factory _$$VerifyPoIndentImplCopyWith(_$VerifyPoIndentImpl value,
          $Res Function(_$VerifyPoIndentImpl) then) =
      __$$VerifyPoIndentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      int? sellerPurchaseOrderId,
      String? vehicleNumber,
      String? indentNumber});
}

/// @nodoc
class __$$VerifyPoIndentImplCopyWithImpl<$Res>
    extends _$VerifyPoIndentCopyWithImpl<$Res, _$VerifyPoIndentImpl>
    implements _$$VerifyPoIndentImplCopyWith<$Res> {
  __$$VerifyPoIndentImplCopyWithImpl(
      _$VerifyPoIndentImpl _value, $Res Function(_$VerifyPoIndentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? sellerPurchaseOrderId = freezed,
    Object? vehicleNumber = freezed,
    Object? indentNumber = freezed,
  }) {
    return _then(_$VerifyPoIndentImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerPurchaseOrderId: freezed == sellerPurchaseOrderId
          ? _value.sellerPurchaseOrderId
          : sellerPurchaseOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      indentNumber: freezed == indentNumber
          ? _value.indentNumber
          : indentNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyPoIndentImpl implements _VerifyPoIndent {
  const _$VerifyPoIndentImpl(
      {this.status,
      this.sellerPurchaseOrderId,
      this.vehicleNumber,
      this.indentNumber});

  factory _$VerifyPoIndentImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyPoIndentImplFromJson(json);

  @override
  final String? status;
  @override
  final int? sellerPurchaseOrderId;
  @override
  final String? vehicleNumber;
  @override
  final String? indentNumber;

  @override
  String toString() {
    return 'VerifyPoIndent(status: $status, sellerPurchaseOrderId: $sellerPurchaseOrderId, vehicleNumber: $vehicleNumber, indentNumber: $indentNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPoIndentImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sellerPurchaseOrderId, sellerPurchaseOrderId) ||
                other.sellerPurchaseOrderId == sellerPurchaseOrderId) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.indentNumber, indentNumber) ||
                other.indentNumber == indentNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, sellerPurchaseOrderId, vehicleNumber, indentNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPoIndentImplCopyWith<_$VerifyPoIndentImpl> get copyWith =>
      __$$VerifyPoIndentImplCopyWithImpl<_$VerifyPoIndentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyPoIndentImplToJson(
      this,
    );
  }
}

abstract class _VerifyPoIndent implements VerifyPoIndent {
  const factory _VerifyPoIndent(
      {final String? status,
      final int? sellerPurchaseOrderId,
      final String? vehicleNumber,
      final String? indentNumber}) = _$VerifyPoIndentImpl;

  factory _VerifyPoIndent.fromJson(Map<String, dynamic> json) =
      _$VerifyPoIndentImpl.fromJson;

  @override
  String? get status;
  @override
  int? get sellerPurchaseOrderId;
  @override
  String? get vehicleNumber;
  @override
  String? get indentNumber;
  @override
  @JsonKey(ignore: true)
  _$$VerifyPoIndentImplCopyWith<_$VerifyPoIndentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
