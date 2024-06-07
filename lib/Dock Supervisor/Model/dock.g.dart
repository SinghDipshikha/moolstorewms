// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DockImpl _$$DockImplFromJson(Map<String, dynamic> json) => _$DockImpl(
      dockId: (json['dockId'] as num?)?.toInt(),
      dockName: json['dockName'] as String?,
      id: (json['id'] as num?)?.toInt(),
      vehicleNumber: json['vehicleNumber'] as String?,
      vehicleStatus: json['vehicleStatus'] as String?,
      movement: json['movement'] as String?,
      isShow: (json['isShow'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DockImplToJson(_$DockImpl instance) =>
    <String, dynamic>{
      'dockId': instance.dockId,
      'dockName': instance.dockName,
      'id': instance.id,
      'vehicleNumber': instance.vehicleNumber,
      'vehicleStatus': instance.vehicleStatus,
      'movement': instance.movement,
      'isShow': instance.isShow,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
