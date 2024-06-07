// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleImpl _$$VehicleImplFromJson(Map<String, dynamic> json) =>
    _$VehicleImpl(
      id: (json['id'] as num?)?.toInt(),
      vehicle_number: json['vehicle_number'] as String?,
      vehicle_status: json['vehicle_status'] as String?,
      movement: json['movement'] as String?,
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
      'vehicle_number': instance.vehicle_number,
      'vehicle_status': instance.vehicle_status,
      'movement': instance.movement,
      'isShow': instance.isShow,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
      'dock_id': instance.dock_id,
      'dock_name': instance.dock_name,
    };
