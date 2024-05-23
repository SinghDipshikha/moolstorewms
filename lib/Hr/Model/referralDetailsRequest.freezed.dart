// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referralDetailsRequest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReferralDetailsRequest _$ReferralDetailsRequestFromJson(
    Map<String, dynamic> json) {
  return _ReferralDetailsRequest.fromJson(json);
}

/// @nodoc
mixin _$ReferralDetailsRequest {
  int? get userId => throw _privateConstructorUsedError;
  int? get updatedBy => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  String? get emailId => throw _privateConstructorUsedError;
  String? get mobileNumber => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralDetailsRequestCopyWith<ReferralDetailsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralDetailsRequestCopyWith<$Res> {
  factory $ReferralDetailsRequestCopyWith(ReferralDetailsRequest value,
          $Res Function(ReferralDetailsRequest) then) =
      _$ReferralDetailsRequestCopyWithImpl<$Res, ReferralDetailsRequest>;
  @useResult
  $Res call(
      {int? userId,
      int? updatedBy,
      String? name,
      String? company,
      String? designation,
      String? emailId,
      String? mobileNumber,
      String? address});
}

/// @nodoc
class _$ReferralDetailsRequestCopyWithImpl<$Res,
        $Val extends ReferralDetailsRequest>
    implements $ReferralDetailsRequestCopyWith<$Res> {
  _$ReferralDetailsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? updatedBy = freezed,
    Object? name = freezed,
    Object? company = freezed,
    Object? designation = freezed,
    Object? emailId = freezed,
    Object? mobileNumber = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralDetailsRequestImplCopyWith<$Res>
    implements $ReferralDetailsRequestCopyWith<$Res> {
  factory _$$ReferralDetailsRequestImplCopyWith(
          _$ReferralDetailsRequestImpl value,
          $Res Function(_$ReferralDetailsRequestImpl) then) =
      __$$ReferralDetailsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId,
      int? updatedBy,
      String? name,
      String? company,
      String? designation,
      String? emailId,
      String? mobileNumber,
      String? address});
}

/// @nodoc
class __$$ReferralDetailsRequestImplCopyWithImpl<$Res>
    extends _$ReferralDetailsRequestCopyWithImpl<$Res,
        _$ReferralDetailsRequestImpl>
    implements _$$ReferralDetailsRequestImplCopyWith<$Res> {
  __$$ReferralDetailsRequestImplCopyWithImpl(
      _$ReferralDetailsRequestImpl _value,
      $Res Function(_$ReferralDetailsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? updatedBy = freezed,
    Object? name = freezed,
    Object? company = freezed,
    Object? designation = freezed,
    Object? emailId = freezed,
    Object? mobileNumber = freezed,
    Object? address = freezed,
  }) {
    return _then(_$ReferralDetailsRequestImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralDetailsRequestImpl implements _ReferralDetailsRequest {
  const _$ReferralDetailsRequestImpl(
      {this.userId,
      this.updatedBy,
      this.name,
      this.company,
      this.designation,
      this.emailId,
      this.mobileNumber,
      this.address});

  factory _$ReferralDetailsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralDetailsRequestImplFromJson(json);

  @override
  final int? userId;
  @override
  final int? updatedBy;
  @override
  final String? name;
  @override
  final String? company;
  @override
  final String? designation;
  @override
  final String? emailId;
  @override
  final String? mobileNumber;
  @override
  final String? address;

  @override
  String toString() {
    return 'ReferralDetailsRequest(userId: $userId, updatedBy: $updatedBy, name: $name, company: $company, designation: $designation, emailId: $emailId, mobileNumber: $mobileNumber, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralDetailsRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, updatedBy, name, company,
      designation, emailId, mobileNumber, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralDetailsRequestImplCopyWith<_$ReferralDetailsRequestImpl>
      get copyWith => __$$ReferralDetailsRequestImplCopyWithImpl<
          _$ReferralDetailsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralDetailsRequestImplToJson(
      this,
    );
  }
}

abstract class _ReferralDetailsRequest implements ReferralDetailsRequest {
  const factory _ReferralDetailsRequest(
      {final int? userId,
      final int? updatedBy,
      final String? name,
      final String? company,
      final String? designation,
      final String? emailId,
      final String? mobileNumber,
      final String? address}) = _$ReferralDetailsRequestImpl;

  factory _ReferralDetailsRequest.fromJson(Map<String, dynamic> json) =
      _$ReferralDetailsRequestImpl.fromJson;

  @override
  int? get userId;
  @override
  int? get updatedBy;
  @override
  String? get name;
  @override
  String? get company;
  @override
  String? get designation;
  @override
  String? get emailId;
  @override
  String? get mobileNumber;
  @override
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$ReferralDetailsRequestImplCopyWith<_$ReferralDetailsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
