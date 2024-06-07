// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DockImpl _$$DockImplFromJson(Map<String, dynamic> json) => _$DockImpl(
      title: json['title'] as String?,
      status: (json['status'] as num?)?.toInt(),
      warehouseId: (json['warehouseId'] as num?)?.toInt(),
      dockId: (json['dockId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DockImplToJson(_$DockImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'status': instance.status,
      'warehouseId': instance.warehouseId,
      'dockId': instance.dockId,
    };
