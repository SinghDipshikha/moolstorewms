// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signupfield.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupField _$SignupFieldFromJson(Map<String, dynamic> json) {
  return _SignupField.fromJson(json);
}

/// @nodoc
mixin _$SignupField {
  int get id => throw _privateConstructorUsedError;
  String get field_name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get error_message_on_empt => throw _privateConstructorUsedError;
  String? get invalid_message => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError; //   String? regex,
  int get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupFieldCopyWith<SignupField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupFieldCopyWith<$Res> {
  factory $SignupFieldCopyWith(
          SignupField value, $Res Function(SignupField) then) =
      _$SignupFieldCopyWithImpl<$Res, SignupField>;
  @useResult
  $Res call(
      {int id,
      String field_name,
      String type,
      String? error_message_on_empt,
      String? invalid_message,
      dynamic value,
      int required});
}

/// @nodoc
class _$SignupFieldCopyWithImpl<$Res, $Val extends SignupField>
    implements $SignupFieldCopyWith<$Res> {
  _$SignupFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? field_name = null,
    Object? type = null,
    Object? error_message_on_empt = freezed,
    Object? invalid_message = freezed,
    Object? value = freezed,
    Object? required = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      field_name: null == field_name
          ? _value.field_name
          : field_name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      error_message_on_empt: freezed == error_message_on_empt
          ? _value.error_message_on_empt
          : error_message_on_empt // ignore: cast_nullable_to_non_nullable
              as String?,
      invalid_message: freezed == invalid_message
          ? _value.invalid_message
          : invalid_message // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupFieldImplCopyWith<$Res>
    implements $SignupFieldCopyWith<$Res> {
  factory _$$SignupFieldImplCopyWith(
          _$SignupFieldImpl value, $Res Function(_$SignupFieldImpl) then) =
      __$$SignupFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String field_name,
      String type,
      String? error_message_on_empt,
      String? invalid_message,
      dynamic value,
      int required});
}

/// @nodoc
class __$$SignupFieldImplCopyWithImpl<$Res>
    extends _$SignupFieldCopyWithImpl<$Res, _$SignupFieldImpl>
    implements _$$SignupFieldImplCopyWith<$Res> {
  __$$SignupFieldImplCopyWithImpl(
      _$SignupFieldImpl _value, $Res Function(_$SignupFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? field_name = null,
    Object? type = null,
    Object? error_message_on_empt = freezed,
    Object? invalid_message = freezed,
    Object? value = freezed,
    Object? required = null,
  }) {
    return _then(_$SignupFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      field_name: null == field_name
          ? _value.field_name
          : field_name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      error_message_on_empt: freezed == error_message_on_empt
          ? _value.error_message_on_empt
          : error_message_on_empt // ignore: cast_nullable_to_non_nullable
              as String?,
      invalid_message: freezed == invalid_message
          ? _value.invalid_message
          : invalid_message // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupFieldImpl implements _SignupField {
  const _$SignupFieldImpl(
      {required this.id,
      required this.field_name,
      required this.type,
      this.error_message_on_empt,
      this.invalid_message,
      this.value,
      required this.required});

  factory _$SignupFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupFieldImplFromJson(json);

  @override
  final int id;
  @override
  final String field_name;
  @override
  final String type;
  @override
  final String? error_message_on_empt;
  @override
  final String? invalid_message;
  @override
  final dynamic value;
//   String? regex,
  @override
  final int required;

  @override
  String toString() {
    return 'SignupField(id: $id, field_name: $field_name, type: $type, error_message_on_empt: $error_message_on_empt, invalid_message: $invalid_message, value: $value, required: $required)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.field_name, field_name) ||
                other.field_name == field_name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.error_message_on_empt, error_message_on_empt) ||
                other.error_message_on_empt == error_message_on_empt) &&
            (identical(other.invalid_message, invalid_message) ||
                other.invalid_message == invalid_message) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.required, required) ||
                other.required == required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      field_name,
      type,
      error_message_on_empt,
      invalid_message,
      const DeepCollectionEquality().hash(value),
      required);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupFieldImplCopyWith<_$SignupFieldImpl> get copyWith =>
      __$$SignupFieldImplCopyWithImpl<_$SignupFieldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupFieldImplToJson(
      this,
    );
  }
}

abstract class _SignupField implements SignupField {
  const factory _SignupField(
      {required final int id,
      required final String field_name,
      required final String type,
      final String? error_message_on_empt,
      final String? invalid_message,
      final dynamic value,
      required final int required}) = _$SignupFieldImpl;

  factory _SignupField.fromJson(Map<String, dynamic> json) =
      _$SignupFieldImpl.fromJson;

  @override
  int get id;
  @override
  String get field_name;
  @override
  String get type;
  @override
  String? get error_message_on_empt;
  @override
  String? get invalid_message;
  @override
  dynamic get value;
  @override //   String? regex,
  int get required;
  @override
  @JsonKey(ignore: true)
  _$$SignupFieldImplCopyWith<_$SignupFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
