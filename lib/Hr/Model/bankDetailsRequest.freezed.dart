// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bankDetailsRequest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BankDetailsRequest _$BankDetailsRequestFromJson(Map<String, dynamic> json) {
  return _BankDetailsRequest.fromJson(json);
}

/// @nodoc
mixin _$BankDetailsRequest {
  int? get id => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  String? get account_name => throw _privateConstructorUsedError;
  String? get ifsc_no => throw _privateConstructorUsedError;
  String? get bank_name => throw _privateConstructorUsedError;
  String? get account_no => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankDetailsRequestCopyWith<BankDetailsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDetailsRequestCopyWith<$Res> {
  factory $BankDetailsRequestCopyWith(
          BankDetailsRequest value, $Res Function(BankDetailsRequest) then) =
      _$BankDetailsRequestCopyWithImpl<$Res, BankDetailsRequest>;
  @useResult
  $Res call(
      {int? id,
      int? user_id,
      String? account_name,
      String? ifsc_no,
      String? bank_name,
      String? account_no});
}

/// @nodoc
class _$BankDetailsRequestCopyWithImpl<$Res, $Val extends BankDetailsRequest>
    implements $BankDetailsRequestCopyWith<$Res> {
  _$BankDetailsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? account_name = freezed,
    Object? ifsc_no = freezed,
    Object? bank_name = freezed,
    Object? account_no = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      account_name: freezed == account_name
          ? _value.account_name
          : account_name // ignore: cast_nullable_to_non_nullable
              as String?,
      ifsc_no: freezed == ifsc_no
          ? _value.ifsc_no
          : ifsc_no // ignore: cast_nullable_to_non_nullable
              as String?,
      bank_name: freezed == bank_name
          ? _value.bank_name
          : bank_name // ignore: cast_nullable_to_non_nullable
              as String?,
      account_no: freezed == account_no
          ? _value.account_no
          : account_no // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankDetailsRequestImplCopyWith<$Res>
    implements $BankDetailsRequestCopyWith<$Res> {
  factory _$$BankDetailsRequestImplCopyWith(_$BankDetailsRequestImpl value,
          $Res Function(_$BankDetailsRequestImpl) then) =
      __$$BankDetailsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? user_id,
      String? account_name,
      String? ifsc_no,
      String? bank_name,
      String? account_no});
}

/// @nodoc
class __$$BankDetailsRequestImplCopyWithImpl<$Res>
    extends _$BankDetailsRequestCopyWithImpl<$Res, _$BankDetailsRequestImpl>
    implements _$$BankDetailsRequestImplCopyWith<$Res> {
  __$$BankDetailsRequestImplCopyWithImpl(_$BankDetailsRequestImpl _value,
      $Res Function(_$BankDetailsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? account_name = freezed,
    Object? ifsc_no = freezed,
    Object? bank_name = freezed,
    Object? account_no = freezed,
  }) {
    return _then(_$BankDetailsRequestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      account_name: freezed == account_name
          ? _value.account_name
          : account_name // ignore: cast_nullable_to_non_nullable
              as String?,
      ifsc_no: freezed == ifsc_no
          ? _value.ifsc_no
          : ifsc_no // ignore: cast_nullable_to_non_nullable
              as String?,
      bank_name: freezed == bank_name
          ? _value.bank_name
          : bank_name // ignore: cast_nullable_to_non_nullable
              as String?,
      account_no: freezed == account_no
          ? _value.account_no
          : account_no // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankDetailsRequestImpl implements _BankDetailsRequest {
  const _$BankDetailsRequestImpl(
      {this.id,
      this.user_id,
      this.account_name,
      this.ifsc_no,
      this.bank_name,
      this.account_no});

  factory _$BankDetailsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankDetailsRequestImplFromJson(json);

  @override
  final int? id;
  @override
  final int? user_id;
  @override
  final String? account_name;
  @override
  final String? ifsc_no;
  @override
  final String? bank_name;
  @override
  final String? account_no;

  @override
  String toString() {
    return 'BankDetailsRequest(id: $id, user_id: $user_id, account_name: $account_name, ifsc_no: $ifsc_no, bank_name: $bank_name, account_no: $account_no)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankDetailsRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.account_name, account_name) ||
                other.account_name == account_name) &&
            (identical(other.ifsc_no, ifsc_no) || other.ifsc_no == ifsc_no) &&
            (identical(other.bank_name, bank_name) ||
                other.bank_name == bank_name) &&
            (identical(other.account_no, account_no) ||
                other.account_no == account_no));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, user_id, account_name, ifsc_no, bank_name, account_no);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankDetailsRequestImplCopyWith<_$BankDetailsRequestImpl> get copyWith =>
      __$$BankDetailsRequestImplCopyWithImpl<_$BankDetailsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankDetailsRequestImplToJson(
      this,
    );
  }
}

abstract class _BankDetailsRequest implements BankDetailsRequest {
  const factory _BankDetailsRequest(
      {final int? id,
      final int? user_id,
      final String? account_name,
      final String? ifsc_no,
      final String? bank_name,
      final String? account_no}) = _$BankDetailsRequestImpl;

  factory _BankDetailsRequest.fromJson(Map<String, dynamic> json) =
      _$BankDetailsRequestImpl.fromJson;

  @override
  int? get id;
  @override
  int? get user_id;
  @override
  String? get account_name;
  @override
  String? get ifsc_no;
  @override
  String? get bank_name;
  @override
  String? get account_no;
  @override
  @JsonKey(ignore: true)
  _$$BankDetailsRequestImplCopyWith<_$BankDetailsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
