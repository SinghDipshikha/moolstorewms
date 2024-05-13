// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  int? get id => throw _privateConstructorUsedError;
  int? get sellerCompanyDetailsID => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  int? get seller_company_id => throw _privateConstructorUsedError;
  String? get phone_no => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get gst_no => throw _privateConstructorUsedError;
  String? get company_name => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  dynamic get updated_at => throw _privateConstructorUsedError;
  dynamic get deleted_at => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {int? id,
      int? sellerCompanyDetailsID,
      int? user_id,
      int? seller_company_id,
      String? phone_no,
      String? address,
      String? state,
      String? gst_no,
      String? company_name,
      DateTime? created_at,
      dynamic updated_at,
      dynamic deleted_at,
      dynamic status});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sellerCompanyDetailsID = freezed,
    Object? user_id = freezed,
    Object? seller_company_id = freezed,
    Object? phone_no = freezed,
    Object? address = freezed,
    Object? state = freezed,
    Object? gst_no = freezed,
    Object? company_name = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sellerCompanyDetailsID: freezed == sellerCompanyDetailsID
          ? _value.sellerCompanyDetailsID
          : sellerCompanyDetailsID // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      seller_company_id: freezed == seller_company_id
          ? _value.seller_company_id
          : seller_company_id // ignore: cast_nullable_to_non_nullable
              as int?,
      phone_no: freezed == phone_no
          ? _value.phone_no
          : phone_no // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      gst_no: freezed == gst_no
          ? _value.gst_no
          : gst_no // ignore: cast_nullable_to_non_nullable
              as String?,
      company_name: freezed == company_name
          ? _value.company_name
          : company_name // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? sellerCompanyDetailsID,
      int? user_id,
      int? seller_company_id,
      String? phone_no,
      String? address,
      String? state,
      String? gst_no,
      String? company_name,
      DateTime? created_at,
      dynamic updated_at,
      dynamic deleted_at,
      dynamic status});
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sellerCompanyDetailsID = freezed,
    Object? user_id = freezed,
    Object? seller_company_id = freezed,
    Object? phone_no = freezed,
    Object? address = freezed,
    Object? state = freezed,
    Object? gst_no = freezed,
    Object? company_name = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? status = freezed,
  }) {
    return _then(_$CompanyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sellerCompanyDetailsID: freezed == sellerCompanyDetailsID
          ? _value.sellerCompanyDetailsID
          : sellerCompanyDetailsID // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      seller_company_id: freezed == seller_company_id
          ? _value.seller_company_id
          : seller_company_id // ignore: cast_nullable_to_non_nullable
              as int?,
      phone_no: freezed == phone_no
          ? _value.phone_no
          : phone_no // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      gst_no: freezed == gst_no
          ? _value.gst_no
          : gst_no // ignore: cast_nullable_to_non_nullable
              as String?,
      company_name: freezed == company_name
          ? _value.company_name
          : company_name // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyImpl implements _Company {
  const _$CompanyImpl(
      {this.id,
      this.sellerCompanyDetailsID,
      this.user_id,
      this.seller_company_id,
      this.phone_no,
      this.address,
      this.state,
      this.gst_no,
      this.company_name,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.status});

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  final int? id;
  @override
  final int? sellerCompanyDetailsID;
  @override
  final int? user_id;
  @override
  final int? seller_company_id;
  @override
  final String? phone_no;
  @override
  final String? address;
  @override
  final String? state;
  @override
  final String? gst_no;
  @override
  final String? company_name;
  @override
  final DateTime? created_at;
  @override
  final dynamic updated_at;
  @override
  final dynamic deleted_at;
  @override
  final dynamic status;

  @override
  String toString() {
    return 'Company(id: $id, sellerCompanyDetailsID: $sellerCompanyDetailsID, user_id: $user_id, seller_company_id: $seller_company_id, phone_no: $phone_no, address: $address, state: $state, gst_no: $gst_no, company_name: $company_name, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sellerCompanyDetailsID, sellerCompanyDetailsID) ||
                other.sellerCompanyDetailsID == sellerCompanyDetailsID) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.seller_company_id, seller_company_id) ||
                other.seller_company_id == seller_company_id) &&
            (identical(other.phone_no, phone_no) ||
                other.phone_no == phone_no) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.gst_no, gst_no) || other.gst_no == gst_no) &&
            (identical(other.company_name, company_name) ||
                other.company_name == company_name) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality()
                .equals(other.deleted_at, deleted_at) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sellerCompanyDetailsID,
      user_id,
      seller_company_id,
      phone_no,
      address,
      state,
      gst_no,
      company_name,
      created_at,
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(deleted_at),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {final int? id,
      final int? sellerCompanyDetailsID,
      final int? user_id,
      final int? seller_company_id,
      final String? phone_no,
      final String? address,
      final String? state,
      final String? gst_no,
      final String? company_name,
      final DateTime? created_at,
      final dynamic updated_at,
      final dynamic deleted_at,
      final dynamic status}) = _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  int? get id;
  @override
  int? get sellerCompanyDetailsID;
  @override
  int? get user_id;
  @override
  int? get seller_company_id;
  @override
  String? get phone_no;
  @override
  String? get address;
  @override
  String? get state;
  @override
  String? get gst_no;
  @override
  String? get company_name;
  @override
  DateTime? get created_at;
  @override
  dynamic get updated_at;
  @override
  dynamic get deleted_at;
  @override
  dynamic get status;
  @override
  @JsonKey(ignore: true)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
