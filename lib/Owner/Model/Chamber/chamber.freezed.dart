// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chamber.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Chamber _$ChamberFromJson(Map<String, dynamic> json) {
  return _Chamber.fromJson(json);
}

/// @nodoc
mixin _$Chamber {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChamberCopyWith<Chamber> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChamberCopyWith<$Res> {
  factory $ChamberCopyWith(Chamber value, $Res Function(Chamber) then) =
      _$ChamberCopyWithImpl<$Res, Chamber>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ChamberCopyWithImpl<$Res, $Val extends Chamber>
    implements $ChamberCopyWith<$Res> {
  _$ChamberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChamberImplCopyWith<$Res> implements $ChamberCopyWith<$Res> {
  factory _$$ChamberImplCopyWith(
          _$ChamberImpl value, $Res Function(_$ChamberImpl) then) =
      __$$ChamberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ChamberImplCopyWithImpl<$Res>
    extends _$ChamberCopyWithImpl<$Res, _$ChamberImpl>
    implements _$$ChamberImplCopyWith<$Res> {
  __$$ChamberImplCopyWithImpl(
      _$ChamberImpl _value, $Res Function(_$ChamberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ChamberImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChamberImpl implements _Chamber {
  const _$ChamberImpl({required this.id});

  factory _$ChamberImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChamberImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'Chamber(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChamberImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChamberImplCopyWith<_$ChamberImpl> get copyWith =>
      __$$ChamberImplCopyWithImpl<_$ChamberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChamberImplToJson(
      this,
    );
  }
}

abstract class _Chamber implements Chamber {
  const factory _Chamber({required final int id}) = _$ChamberImpl;

  factory _Chamber.fromJson(Map<String, dynamic> json) = _$ChamberImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$ChamberImplCopyWith<_$ChamberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
