// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Person _$PersonFromJson(Map<String, dynamic> json) {
  return _GetAllPersonsBySecurityGaurd.fromJson(json);
}

/// @nodoc
mixin _$Person {
  int? get id => throw _privateConstructorUsedError;
  String? get person_name => throw _privateConstructorUsedError;
  String? get person_phone => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res, Person>;
  @useResult
  $Res call(
      {int? id,
      String? person_name,
      String? person_phone,
      String? status,
      DateTime? created_at});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res, $Val extends Person>
    implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? person_name = freezed,
    Object? person_phone = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      person_name: freezed == person_name
          ? _value.person_name
          : person_name // ignore: cast_nullable_to_non_nullable
              as String?,
      person_phone: freezed == person_phone
          ? _value.person_phone
          : person_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllPersonsBySecurityGaurdImplCopyWith<$Res>
    implements $PersonCopyWith<$Res> {
  factory _$$GetAllPersonsBySecurityGaurdImplCopyWith(
          _$GetAllPersonsBySecurityGaurdImpl value,
          $Res Function(_$GetAllPersonsBySecurityGaurdImpl) then) =
      __$$GetAllPersonsBySecurityGaurdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? person_name,
      String? person_phone,
      String? status,
      DateTime? created_at});
}

/// @nodoc
class __$$GetAllPersonsBySecurityGaurdImplCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$GetAllPersonsBySecurityGaurdImpl>
    implements _$$GetAllPersonsBySecurityGaurdImplCopyWith<$Res> {
  __$$GetAllPersonsBySecurityGaurdImplCopyWithImpl(
      _$GetAllPersonsBySecurityGaurdImpl _value,
      $Res Function(_$GetAllPersonsBySecurityGaurdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? person_name = freezed,
    Object? person_phone = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_$GetAllPersonsBySecurityGaurdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      person_name: freezed == person_name
          ? _value.person_name
          : person_name // ignore: cast_nullable_to_non_nullable
              as String?,
      person_phone: freezed == person_phone
          ? _value.person_phone
          : person_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllPersonsBySecurityGaurdImpl
    implements _GetAllPersonsBySecurityGaurd {
  const _$GetAllPersonsBySecurityGaurdImpl(
      {this.id,
      this.person_name,
      this.person_phone,
      this.status,
      this.created_at});

  factory _$GetAllPersonsBySecurityGaurdImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllPersonsBySecurityGaurdImplFromJson(json);

  @override
  final int? id;
  @override
  final String? person_name;
  @override
  final String? person_phone;
  @override
  final String? status;
  @override
  final DateTime? created_at;

  @override
  String toString() {
    return 'Person(id: $id, person_name: $person_name, person_phone: $person_phone, status: $status, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllPersonsBySecurityGaurdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.person_name, person_name) ||
                other.person_name == person_name) &&
            (identical(other.person_phone, person_phone) ||
                other.person_phone == person_phone) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, person_name, person_phone, status, created_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllPersonsBySecurityGaurdImplCopyWith<
          _$GetAllPersonsBySecurityGaurdImpl>
      get copyWith => __$$GetAllPersonsBySecurityGaurdImplCopyWithImpl<
          _$GetAllPersonsBySecurityGaurdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllPersonsBySecurityGaurdImplToJson(
      this,
    );
  }
}

abstract class _GetAllPersonsBySecurityGaurd implements Person {
  const factory _GetAllPersonsBySecurityGaurd(
      {final int? id,
      final String? person_name,
      final String? person_phone,
      final String? status,
      final DateTime? created_at}) = _$GetAllPersonsBySecurityGaurdImpl;

  factory _GetAllPersonsBySecurityGaurd.fromJson(Map<String, dynamic> json) =
      _$GetAllPersonsBySecurityGaurdImpl.fromJson;

  @override
  int? get id;
  @override
  String? get person_name;
  @override
  String? get person_phone;
  @override
  String? get status;
  @override
  DateTime? get created_at;
  @override
  @JsonKey(ignore: true)
  _$$GetAllPersonsBySecurityGaurdImplCopyWith<
          _$GetAllPersonsBySecurityGaurdImpl>
      get copyWith => throw _privateConstructorUsedError;
}
