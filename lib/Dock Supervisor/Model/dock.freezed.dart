// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Dock _$DockFromJson(Map<String, dynamic> json) {
  return _Dock.fromJson(json);
}

/// @nodoc
mixin _$Dock {
  String? get title => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get warehouseId => throw _privateConstructorUsedError;
  int? get dockId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DockCopyWith<Dock> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DockCopyWith<$Res> {
  factory $DockCopyWith(Dock value, $Res Function(Dock) then) =
      _$DockCopyWithImpl<$Res, Dock>;
  @useResult
  $Res call({String? title, int? status, int? warehouseId, int? dockId});
}

/// @nodoc
class _$DockCopyWithImpl<$Res, $Val extends Dock>
    implements $DockCopyWith<$Res> {
  _$DockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? status = freezed,
    Object? warehouseId = freezed,
    Object? dockId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      warehouseId: freezed == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int?,
      dockId: freezed == dockId
          ? _value.dockId
          : dockId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DockImplCopyWith<$Res> implements $DockCopyWith<$Res> {
  factory _$$DockImplCopyWith(
          _$DockImpl value, $Res Function(_$DockImpl) then) =
      __$$DockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, int? status, int? warehouseId, int? dockId});
}

/// @nodoc
class __$$DockImplCopyWithImpl<$Res>
    extends _$DockCopyWithImpl<$Res, _$DockImpl>
    implements _$$DockImplCopyWith<$Res> {
  __$$DockImplCopyWithImpl(_$DockImpl _value, $Res Function(_$DockImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? status = freezed,
    Object? warehouseId = freezed,
    Object? dockId = freezed,
  }) {
    return _then(_$DockImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      warehouseId: freezed == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as int?,
      dockId: freezed == dockId
          ? _value.dockId
          : dockId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DockImpl implements _Dock {
  const _$DockImpl({this.title, this.status, this.warehouseId, this.dockId});

  factory _$DockImpl.fromJson(Map<String, dynamic> json) =>
      _$$DockImplFromJson(json);

  @override
  final String? title;
  @override
  final int? status;
  @override
  final int? warehouseId;
  @override
  final int? dockId;

  @override
  String toString() {
    return 'Dock(title: $title, status: $status, warehouseId: $warehouseId, dockId: $dockId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DockImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.dockId, dockId) || other.dockId == dockId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, status, warehouseId, dockId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DockImplCopyWith<_$DockImpl> get copyWith =>
      __$$DockImplCopyWithImpl<_$DockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DockImplToJson(
      this,
    );
  }
}

abstract class _Dock implements Dock {
  const factory _Dock(
      {final String? title,
      final int? status,
      final int? warehouseId,
      final int? dockId}) = _$DockImpl;

  factory _Dock.fromJson(Map<String, dynamic> json) = _$DockImpl.fromJson;

  @override
  String? get title;
  @override
  int? get status;
  @override
  int? get warehouseId;
  @override
  int? get dockId;
  @override
  @JsonKey(ignore: true)
  _$$DockImplCopyWith<_$DockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
