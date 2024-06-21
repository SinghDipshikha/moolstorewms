// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customerListElement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerListElement _$CustomerListElementFromJson(Map<String, dynamic> json) {
  return _CustomerListElement.fromJson(json);
}

/// @nodoc
mixin _$CustomerListElement {
  int? get id => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  String? get customer_num => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get company_name => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerListElementCopyWith<CustomerListElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerListElementCopyWith<$Res> {
  factory $CustomerListElementCopyWith(
          CustomerListElement value, $Res Function(CustomerListElement) then) =
      _$CustomerListElementCopyWithImpl<$Res, CustomerListElement>;
  @useResult
  $Res call(
      {int? id,
      String? first_name,
      String? customer_num,
      String? last_name,
      String? phone,
      String? email,
      String? company_name,
      String? avatar,
      int? status});
}

/// @nodoc
class _$CustomerListElementCopyWithImpl<$Res, $Val extends CustomerListElement>
    implements $CustomerListElementCopyWith<$Res> {
  _$CustomerListElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? first_name = freezed,
    Object? customer_num = freezed,
    Object? last_name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? company_name = freezed,
    Object? avatar = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_num: freezed == customer_num
          ? _value.customer_num
          : customer_num // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      company_name: freezed == company_name
          ? _value.company_name
          : company_name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerListElementImplCopyWith<$Res>
    implements $CustomerListElementCopyWith<$Res> {
  factory _$$CustomerListElementImplCopyWith(_$CustomerListElementImpl value,
          $Res Function(_$CustomerListElementImpl) then) =
      __$$CustomerListElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? first_name,
      String? customer_num,
      String? last_name,
      String? phone,
      String? email,
      String? company_name,
      String? avatar,
      int? status});
}

/// @nodoc
class __$$CustomerListElementImplCopyWithImpl<$Res>
    extends _$CustomerListElementCopyWithImpl<$Res, _$CustomerListElementImpl>
    implements _$$CustomerListElementImplCopyWith<$Res> {
  __$$CustomerListElementImplCopyWithImpl(_$CustomerListElementImpl _value,
      $Res Function(_$CustomerListElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? first_name = freezed,
    Object? customer_num = freezed,
    Object? last_name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? company_name = freezed,
    Object? avatar = freezed,
    Object? status = freezed,
  }) {
    return _then(_$CustomerListElementImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_num: freezed == customer_num
          ? _value.customer_num
          : customer_num // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      company_name: freezed == company_name
          ? _value.company_name
          : company_name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerListElementImpl implements _CustomerListElement {
  const _$CustomerListElementImpl(
      {this.id,
      this.first_name,
      this.customer_num,
      this.last_name,
      this.phone,
      this.email,
      this.company_name,
      this.avatar,
      this.status});

  factory _$CustomerListElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerListElementImplFromJson(json);

  @override
  final int? id;
  @override
  final String? first_name;
  @override
  final String? customer_num;
  @override
  final String? last_name;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? company_name;
  @override
  final String? avatar;
  @override
  final int? status;

  @override
  String toString() {
    return 'CustomerListElement(id: $id, first_name: $first_name, customer_num: $customer_num, last_name: $last_name, phone: $phone, email: $email, company_name: $company_name, avatar: $avatar, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerListElementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.customer_num, customer_num) ||
                other.customer_num == customer_num) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.company_name, company_name) ||
                other.company_name == company_name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, first_name, customer_num,
      last_name, phone, email, company_name, avatar, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerListElementImplCopyWith<_$CustomerListElementImpl> get copyWith =>
      __$$CustomerListElementImplCopyWithImpl<_$CustomerListElementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerListElementImplToJson(
      this,
    );
  }
}

abstract class _CustomerListElement implements CustomerListElement {
  const factory _CustomerListElement(
      {final int? id,
      final String? first_name,
      final String? customer_num,
      final String? last_name,
      final String? phone,
      final String? email,
      final String? company_name,
      final String? avatar,
      final int? status}) = _$CustomerListElementImpl;

  factory _CustomerListElement.fromJson(Map<String, dynamic> json) =
      _$CustomerListElementImpl.fromJson;

  @override
  int? get id;
  @override
  String? get first_name;
  @override
  String? get customer_num;
  @override
  String? get last_name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get company_name;
  @override
  String? get avatar;
  @override
  int? get status;
  @override
  @JsonKey(ignore: true)
  _$$CustomerListElementImplCopyWith<_$CustomerListElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
