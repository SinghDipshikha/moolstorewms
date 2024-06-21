// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DockImpl _$$DockImplFromJson(Map<String, dynamic> json) => _$DockImpl(
      dock_id: (json['dock_id'] as num?)?.toInt(),
      dock_name: json['dock_name'] as String?,
      id: (json['id'] as num?)?.toInt(),
      vehicle_number: json['vehicle_number'] as String?,
      vehicle_status: json['vehicle_status'] as String?,
      movement: json['movement'] as String?,
      isShow: (json['isShow'] as num?)?.toInt(),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$DockImplToJson(_$DockImpl instance) =>
    <String, dynamic>{
      'dock_id': instance.dock_id,
      'dock_name': instance.dock_name,
      'id': instance.id,
      'vehicle_number': instance.vehicle_number,
      'vehicle_status': instance.vehicle_status,
      'movement': instance.movement,
      'isShow': instance.isShow,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };
