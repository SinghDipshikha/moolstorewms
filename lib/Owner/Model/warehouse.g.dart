// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseImpl _$$WarehouseImplFromJson(Map<String, dynamic> json) =>
    _$WarehouseImpl(
      id: (json['id'] as num?)?.toInt(),
      warehouse_name: json['warehouse_name'] as String?,
      warehouse_manager_email_id: json['warehouse_manager_email_id'] as String?,
      warehouse_manager_name: json['warehouse_manager_name'] as String?,
      manager_phone_number: json['manager_phone_number'] as String?,
      country_code: json['country_code'] as String?,
      no_of_chambers: (json['no_of_chambers'] as num?)?.toInt(),
      total_capacity: (json['total_capacity'] as num?)?.toInt(),
      no_of_docks: (json['no_of_docks'] as num?)?.toInt(),
      no_of_gates: (json['no_of_gates'] as num?)?.toInt(),
      slug: json['slug'],
      status: (json['status'] as num?)?.toInt(),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      update_at: json['update_at'] == null
          ? null
          : DateTime.parse(json['update_at'] as String),
      deleted_at: json['deleted_at'],
      user_id: (json['user_id'] as num?)?.toInt(),
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      warehouses_location: json['warehouses_location'] as String?,
    );

Map<String, dynamic> _$$WarehouseImplToJson(_$WarehouseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'warehouse_name': instance.warehouse_name,
      'warehouse_manager_email_id': instance.warehouse_manager_email_id,
      'warehouse_manager_name': instance.warehouse_manager_name,
      'manager_phone_number': instance.manager_phone_number,
      'country_code': instance.country_code,
      'no_of_chambers': instance.no_of_chambers,
      'total_capacity': instance.total_capacity,
      'no_of_docks': instance.no_of_docks,
      'no_of_gates': instance.no_of_gates,
      'slug': instance.slug,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'update_at': instance.update_at?.toIso8601String(),
      'deleted_at': instance.deleted_at,
      'user_id': instance.user_id,
      'lat': instance.lat,
      'lng': instance.lng,
      'warehouses_location': instance.warehouses_location,
    };
