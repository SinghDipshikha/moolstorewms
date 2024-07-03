// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleImpl _$$VehicleImplFromJson(Map<String, dynamic> json) =>
    _$VehicleImpl(
      id: (json['id'] as num?)?.toInt(),
      type_id: (json['type_id'] as num).toInt(),
      verified_by_dock_manager:
          (json['verified_by_dock_manager'] as num).toInt(),
      vehicle_number: json['vehicle_number'] as String?,
      vehicle_status: json['vehicle_status'] as String?,
      indent_number: json['indent_number'] as String?,
      movement: json['movement'] as String?,
      type: json['type'] as String?,
      isShow: (json['isShow'] as num?)?.toInt(),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'],
      dock_id: json['dock_id'],
      dock_name: json['dock_name'],
    );

Map<String, dynamic> _$$VehicleImplToJson(_$VehicleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type_id': instance.type_id,
      'verified_by_dock_manager': instance.verified_by_dock_manager,
      'vehicle_number': instance.vehicle_number,
      'vehicle_status': instance.vehicle_status,
      'indent_number': instance.indent_number,
      'movement': instance.movement,
      'type': instance.type,
      'isShow': instance.isShow,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
      'dock_id': instance.dock_id,
      'dock_name': instance.dock_name,
    };
