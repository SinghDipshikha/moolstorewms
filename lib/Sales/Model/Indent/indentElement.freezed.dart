// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'indentElement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IndentElement _$IndentElementFromJson(Map<String, dynamic> json) {
  return _IndentElement.fromJson(json);
}

/// @nodoc
mixin _$IndentElement {
  String? get ticket_id => throw _privateConstructorUsedError;
  String? get order_number => throw _privateConstructorUsedError;
  int? get shipped_to_company_id => throw _privateConstructorUsedError;
  String? get shipped_to_company => throw _privateConstructorUsedError;
  String? get IndentElement_name => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndentElementCopyWith<IndentElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndentElementCopyWith<$Res> {
  factory $IndentElementCopyWith(
          IndentElement value, $Res Function(IndentElement) then) =
      _$IndentElementCopyWithImpl<$Res, IndentElement>;
  @useResult
  $Res call(
      {String? ticket_id,
      String? order_number,
      int? shipped_to_company_id,
      String? shipped_to_company,
      String? IndentElement_name,
      DateTime? dateTime});
}

/// @nodoc
class _$IndentElementCopyWithImpl<$Res, $Val extends IndentElement>
    implements $IndentElementCopyWith<$Res> {
  _$IndentElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket_id = freezed,
    Object? order_number = freezed,
    Object? shipped_to_company_id = freezed,
    Object? shipped_to_company = freezed,
    Object? IndentElement_name = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      ticket_id: freezed == ticket_id
          ? _value.ticket_id
          : ticket_id // ignore: cast_nullable_to_non_nullable
              as String?,
      order_number: freezed == order_number
          ? _value.order_number
          : order_number // ignore: cast_nullable_to_non_nullable
              as String?,
      shipped_to_company_id: freezed == shipped_to_company_id
          ? _value.shipped_to_company_id
          : shipped_to_company_id // ignore: cast_nullable_to_non_nullable
              as int?,
      shipped_to_company: freezed == shipped_to_company
          ? _value.shipped_to_company
          : shipped_to_company // ignore: cast_nullable_to_non_nullable
              as String?,
      IndentElement_name: freezed == IndentElement_name
          ? _value.IndentElement_name
          : IndentElement_name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IndentElementImplCopyWith<$Res>
    implements $IndentElementCopyWith<$Res> {
  factory _$$IndentElementImplCopyWith(
          _$IndentElementImpl value, $Res Function(_$IndentElementImpl) then) =
      __$$IndentElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? ticket_id,
      String? order_number,
      int? shipped_to_company_id,
      String? shipped_to_company,
      String? IndentElement_name,
      DateTime? dateTime});
}

/// @nodoc
class __$$IndentElementImplCopyWithImpl<$Res>
    extends _$IndentElementCopyWithImpl<$Res, _$IndentElementImpl>
    implements _$$IndentElementImplCopyWith<$Res> {
  __$$IndentElementImplCopyWithImpl(
      _$IndentElementImpl _value, $Res Function(_$IndentElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket_id = freezed,
    Object? order_number = freezed,
    Object? shipped_to_company_id = freezed,
    Object? shipped_to_company = freezed,
    Object? IndentElement_name = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_$IndentElementImpl(
      ticket_id: freezed == ticket_id
          ? _value.ticket_id
          : ticket_id // ignore: cast_nullable_to_non_nullable
              as String?,
      order_number: freezed == order_number
          ? _value.order_number
          : order_number // ignore: cast_nullable_to_non_nullable
              as String?,
      shipped_to_company_id: freezed == shipped_to_company_id
          ? _value.shipped_to_company_id
          : shipped_to_company_id // ignore: cast_nullable_to_non_nullable
              as int?,
      shipped_to_company: freezed == shipped_to_company
          ? _value.shipped_to_company
          : shipped_to_company // ignore: cast_nullable_to_non_nullable
              as String?,
      IndentElement_name: freezed == IndentElement_name
          ? _value.IndentElement_name
          : IndentElement_name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndentElementImpl implements _IndentElement {
  const _$IndentElementImpl(
      {this.ticket_id,
      this.order_number,
      this.shipped_to_company_id,
      this.shipped_to_company,
      this.IndentElement_name,
      this.dateTime});

  factory _$IndentElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndentElementImplFromJson(json);

  @override
  final String? ticket_id;
  @override
  final String? order_number;
  @override
  final int? shipped_to_company_id;
  @override
  final String? shipped_to_company;
  @override
  final String? IndentElement_name;
  @override
  final DateTime? dateTime;

  @override
  String toString() {
    return 'IndentElement(ticket_id: $ticket_id, order_number: $order_number, shipped_to_company_id: $shipped_to_company_id, shipped_to_company: $shipped_to_company, IndentElement_name: $IndentElement_name, dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndentElementImpl &&
            (identical(other.ticket_id, ticket_id) ||
                other.ticket_id == ticket_id) &&
            (identical(other.order_number, order_number) ||
                other.order_number == order_number) &&
            (identical(other.shipped_to_company_id, shipped_to_company_id) ||
                other.shipped_to_company_id == shipped_to_company_id) &&
            (identical(other.shipped_to_company, shipped_to_company) ||
                other.shipped_to_company == shipped_to_company) &&
            (identical(other.IndentElement_name, IndentElement_name) ||
                other.IndentElement_name == IndentElement_name) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ticket_id, order_number,
      shipped_to_company_id, shipped_to_company, IndentElement_name, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndentElementImplCopyWith<_$IndentElementImpl> get copyWith =>
      __$$IndentElementImplCopyWithImpl<_$IndentElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndentElementImplToJson(
      this,
    );
  }
}

abstract class _IndentElement implements IndentElement {
  const factory _IndentElement(
      {final String? ticket_id,
      final String? order_number,
      final int? shipped_to_company_id,
      final String? shipped_to_company,
      final String? IndentElement_name,
      final DateTime? dateTime}) = _$IndentElementImpl;

  factory _IndentElement.fromJson(Map<String, dynamic> json) =
      _$IndentElementImpl.fromJson;

  @override
  String? get ticket_id;
  @override
  String? get order_number;
  @override
  int? get shipped_to_company_id;
  @override
  String? get shipped_to_company;
  @override
  String? get IndentElement_name;
  @override
  DateTime? get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$IndentElementImplCopyWith<_$IndentElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
