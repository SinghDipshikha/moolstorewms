// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Vehicle _$VehicleFromJson(Map<String, dynamic> json) {
  return _Vehicle.fromJson(json);
}

/// @nodoc
mixin _$Vehicle {
  int? get id => throw _privateConstructorUsedError;
  int get type_id => throw _privateConstructorUsedError;
  int get verified_by_dock_manager => throw _privateConstructorUsedError;
  String? get vehicle_number => throw _privateConstructorUsedError;
  String? get vehicle_status => throw _privateConstructorUsedError;
  String? get indent_number => throw _privateConstructorUsedError;
  String? get movement => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get isShow => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  dynamic get updated_at => throw _privateConstructorUsedError;
  dynamic get dock_id => throw _privateConstructorUsedError;
  dynamic get dock_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleCopyWith<Vehicle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) then) =
      _$VehicleCopyWithImpl<$Res, Vehicle>;
  @useResult
  $Res call(
      {int? id,
      int type_id,
      int verified_by_dock_manager,
      String? vehicle_number,
      String? vehicle_status,
      String? indent_number,
      String? movement,
      String? type,
      int? isShow,
      DateTime? created_at,
      dynamic updated_at,
      dynamic dock_id,
      dynamic dock_name});
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res, $Val extends Vehicle>
    implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type_id = null,
    Object? verified_by_dock_manager = null,
    Object? vehicle_number = freezed,
    Object? vehicle_status = freezed,
    Object? indent_number = freezed,
    Object? movement = freezed,
    Object? type = freezed,
    Object? isShow = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? dock_id = freezed,
    Object? dock_name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type_id: null == type_id
          ? _value.type_id
          : type_id // ignore: cast_nullable_to_non_nullable
              as int,
      verified_by_dock_manager: null == verified_by_dock_manager
          ? _value.verified_by_dock_manager
          : verified_by_dock_manager // ignore: cast_nullable_to_non_nullable
              as int,
      vehicle_number: freezed == vehicle_number
          ? _value.vehicle_number
          : vehicle_number // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_status: freezed == vehicle_status
          ? _value.vehicle_status
          : vehicle_status // ignore: cast_nullable_to_non_nullable
              as String?,
      indent_number: freezed == indent_number
          ? _value.indent_number
          : indent_number // ignore: cast_nullable_to_non_nullable
              as String?,
      movement: freezed == movement
          ? _value.movement
          : movement // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      isShow: freezed == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dock_id: freezed == dock_id
          ? _value.dock_id
          : dock_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dock_name: freezed == dock_name
          ? _value.dock_name
          : dock_name // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleImplCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$$VehicleImplCopyWith(
          _$VehicleImpl value, $Res Function(_$VehicleImpl) then) =
      __$$VehicleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int type_id,
      int verified_by_dock_manager,
      String? vehicle_number,
      String? vehicle_status,
      String? indent_number,
      String? movement,
      String? type,
      int? isShow,
      DateTime? created_at,
      dynamic updated_at,
      dynamic dock_id,
      dynamic dock_name});
}

/// @nodoc
class __$$VehicleImplCopyWithImpl<$Res>
    extends _$VehicleCopyWithImpl<$Res, _$VehicleImpl>
    implements _$$VehicleImplCopyWith<$Res> {
  __$$VehicleImplCopyWithImpl(
      _$VehicleImpl _value, $Res Function(_$VehicleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type_id = null,
    Object? verified_by_dock_manager = null,
    Object? vehicle_number = freezed,
    Object? vehicle_status = freezed,
    Object? indent_number = freezed,
    Object? movement = freezed,
    Object? type = freezed,
    Object? isShow = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? dock_id = freezed,
    Object? dock_name = freezed,
  }) {
    return _then(_$VehicleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type_id: null == type_id
          ? _value.type_id
          : type_id // ignore: cast_nullable_to_non_nullable
              as int,
      verified_by_dock_manager: null == verified_by_dock_manager
          ? _value.verified_by_dock_manager
          : verified_by_dock_manager // ignore: cast_nullable_to_non_nullable
              as int,
      vehicle_number: freezed == vehicle_number
          ? _value.vehicle_number
          : vehicle_number // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle_status: freezed == vehicle_status
          ? _value.vehicle_status
          : vehicle_status // ignore: cast_nullable_to_non_nullable
              as String?,
      indent_number: freezed == indent_number
          ? _value.indent_number
          : indent_number // ignore: cast_nullable_to_non_nullable
              as String?,
      movement: freezed == movement
          ? _value.movement
          : movement // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      isShow: freezed == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dock_id: freezed == dock_id
          ? _value.dock_id
          : dock_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dock_name: freezed == dock_name
          ? _value.dock_name
          : dock_name // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleImpl implements _Vehicle {
  const _$VehicleImpl(
      {this.id,
      required this.type_id,
      required this.verified_by_dock_manager,
      this.vehicle_number,
      this.vehicle_status,
      this.indent_number,
      this.movement,
      this.type,
      this.isShow,
      this.created_at,
      this.updated_at,
      this.dock_id,
      this.dock_name});

  factory _$VehicleImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleImplFromJson(json);

  @override
  final int? id;
  @override
  final int type_id;
  @override
  final int verified_by_dock_manager;
  @override
  final String? vehicle_number;
  @override
  final String? vehicle_status;
  @override
  final String? indent_number;
  @override
  final String? movement;
  @override
  final String? type;
  @override
  final int? isShow;
  @override
  final DateTime? created_at;
  @override
  final dynamic updated_at;
  @override
  final dynamic dock_id;
  @override
  final dynamic dock_name;

  @override
  String toString() {
    return 'Vehicle(id: $id, type_id: $type_id, verified_by_dock_manager: $verified_by_dock_manager, vehicle_number: $vehicle_number, vehicle_status: $vehicle_status, indent_number: $indent_number, movement: $movement, type: $type, isShow: $isShow, created_at: $created_at, updated_at: $updated_at, dock_id: $dock_id, dock_name: $dock_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type_id, type_id) || other.type_id == type_id) &&
            (identical(
                    other.verified_by_dock_manager, verified_by_dock_manager) ||
                other.verified_by_dock_manager == verified_by_dock_manager) &&
            (identical(other.vehicle_number, vehicle_number) ||
                other.vehicle_number == vehicle_number) &&
            (identical(other.vehicle_status, vehicle_status) ||
                other.vehicle_status == vehicle_status) &&
            (identical(other.indent_number, indent_number) ||
                other.indent_number == indent_number) &&
            (identical(other.movement, movement) ||
                other.movement == movement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isShow, isShow) || other.isShow == isShow) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality().equals(other.dock_id, dock_id) &&
            const DeepCollectionEquality().equals(other.dock_name, dock_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type_id,
      verified_by_dock_manager,
      vehicle_number,
      vehicle_status,
      indent_number,
      movement,
      type,
      isShow,
      created_at,
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(dock_id),
      const DeepCollectionEquality().hash(dock_name));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleImplCopyWith<_$VehicleImpl> get copyWith =>
      __$$VehicleImplCopyWithImpl<_$VehicleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleImplToJson(
      this,
    );
  }
}

abstract class _Vehicle implements Vehicle {
  const factory _Vehicle(
      {final int? id,
      required final int type_id,
      required final int verified_by_dock_manager,
      final String? vehicle_number,
      final String? vehicle_status,
      final String? indent_number,
      final String? movement,
      final String? type,
      final int? isShow,
      final DateTime? created_at,
      final dynamic updated_at,
      final dynamic dock_id,
      final dynamic dock_name}) = _$VehicleImpl;

  factory _Vehicle.fromJson(Map<String, dynamic> json) = _$VehicleImpl.fromJson;

  @override
  int? get id;
  @override
  int get type_id;
  @override
  int get verified_by_dock_manager;
  @override
  String? get vehicle_number;
  @override
  String? get vehicle_status;
  @override
  String? get indent_number;
  @override
  String? get movement;
  @override
  String? get type;
  @override
  int? get isShow;
  @override
  DateTime? get created_at;
  @override
  dynamic get updated_at;
  @override
  dynamic get dock_id;
  @override
  dynamic get dock_name;
  @override
  @JsonKey(ignore: true)
  _$$VehicleImplCopyWith<_$VehicleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
