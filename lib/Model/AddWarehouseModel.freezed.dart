// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AddWarehouseModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddWarehouseModel _$AddWarehouseModelFromJson(Map<String, dynamic> json) {
  return _AddWarehouseModel.fromJson(json);
}

/// @nodoc
mixin _$AddWarehouseModel {
  String get warehouseName => throw _privateConstructorUsedError;
  String get warehouseGst => throw _privateConstructorUsedError;
  String get warehouseLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddWarehouseModelCopyWith<AddWarehouseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddWarehouseModelCopyWith<$Res> {
  factory $AddWarehouseModelCopyWith(
          AddWarehouseModel value, $Res Function(AddWarehouseModel) then) =
      _$AddWarehouseModelCopyWithImpl<$Res, AddWarehouseModel>;
  @useResult
  $Res call(
      {String warehouseName, String warehouseGst, String warehouseLocation});
}

/// @nodoc
class _$AddWarehouseModelCopyWithImpl<$Res, $Val extends AddWarehouseModel>
    implements $AddWarehouseModelCopyWith<$Res> {
  _$AddWarehouseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouseName = null,
    Object? warehouseGst = null,
    Object? warehouseLocation = null,
  }) {
    return _then(_value.copyWith(
      warehouseName: null == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String,
      warehouseGst: null == warehouseGst
          ? _value.warehouseGst
          : warehouseGst // ignore: cast_nullable_to_non_nullable
              as String,
      warehouseLocation: null == warehouseLocation
          ? _value.warehouseLocation
          : warehouseLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddWarehouseModelImplCopyWith<$Res>
    implements $AddWarehouseModelCopyWith<$Res> {
  factory _$$AddWarehouseModelImplCopyWith(_$AddWarehouseModelImpl value,
          $Res Function(_$AddWarehouseModelImpl) then) =
      __$$AddWarehouseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String warehouseName, String warehouseGst, String warehouseLocation});
}

/// @nodoc
class __$$AddWarehouseModelImplCopyWithImpl<$Res>
    extends _$AddWarehouseModelCopyWithImpl<$Res, _$AddWarehouseModelImpl>
    implements _$$AddWarehouseModelImplCopyWith<$Res> {
  __$$AddWarehouseModelImplCopyWithImpl(_$AddWarehouseModelImpl _value,
      $Res Function(_$AddWarehouseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warehouseName = null,
    Object? warehouseGst = null,
    Object? warehouseLocation = null,
  }) {
    return _then(_$AddWarehouseModelImpl(
      warehouseName: null == warehouseName
          ? _value.warehouseName
          : warehouseName // ignore: cast_nullable_to_non_nullable
              as String,
      warehouseGst: null == warehouseGst
          ? _value.warehouseGst
          : warehouseGst // ignore: cast_nullable_to_non_nullable
              as String,
      warehouseLocation: null == warehouseLocation
          ? _value.warehouseLocation
          : warehouseLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddWarehouseModelImpl
    with DiagnosticableTreeMixin
    implements _AddWarehouseModel {
  const _$AddWarehouseModelImpl(
      {required this.warehouseName,
      required this.warehouseGst,
      required this.warehouseLocation});

  factory _$AddWarehouseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddWarehouseModelImplFromJson(json);

  @override
  final String warehouseName;
  @override
  final String warehouseGst;
  @override
  final String warehouseLocation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddWarehouseModel(warehouseName: $warehouseName, warehouseGst: $warehouseGst, warehouseLocation: $warehouseLocation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddWarehouseModel'))
      ..add(DiagnosticsProperty('warehouseName', warehouseName))
      ..add(DiagnosticsProperty('warehouseGst', warehouseGst))
      ..add(DiagnosticsProperty('warehouseLocation', warehouseLocation));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddWarehouseModelImpl &&
            (identical(other.warehouseName, warehouseName) ||
                other.warehouseName == warehouseName) &&
            (identical(other.warehouseGst, warehouseGst) ||
                other.warehouseGst == warehouseGst) &&
            (identical(other.warehouseLocation, warehouseLocation) ||
                other.warehouseLocation == warehouseLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, warehouseName, warehouseGst, warehouseLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddWarehouseModelImplCopyWith<_$AddWarehouseModelImpl> get copyWith =>
      __$$AddWarehouseModelImplCopyWithImpl<_$AddWarehouseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddWarehouseModelImplToJson(
      this,
    );
  }
}

abstract class _AddWarehouseModel implements AddWarehouseModel {
  const factory _AddWarehouseModel(
      {required final String warehouseName,
      required final String warehouseGst,
      required final String warehouseLocation}) = _$AddWarehouseModelImpl;

  factory _AddWarehouseModel.fromJson(Map<String, dynamic> json) =
      _$AddWarehouseModelImpl.fromJson;

  @override
  String get warehouseName;
  @override
  String get warehouseGst;
  @override
  String get warehouseLocation;
  @override
  @JsonKey(ignore: true)
  _$$AddWarehouseModelImplCopyWith<_$AddWarehouseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
