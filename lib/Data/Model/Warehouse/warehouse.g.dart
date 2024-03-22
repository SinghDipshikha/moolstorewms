// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseImpl _$$WarehouseImplFromJson(Map<String, dynamic> json) =>
    _$WarehouseImpl(
      id: json['id'] as int?,
      warehouse_name: json['warehouse_name'] as String?,
      manage_email: json['manage_email'] as String?,
      warehouse_manager: json['warehouse_manager'] as String?,
      phone: json['phone'] as String?,
      country_code: json['country_code'] as String?,
      no_of_chambers: json['no_of_chambers'] as int?,
      total_capacity: json['total_capacity'] as int?,
      no_of_docks: json['no_of_docks'] as int?,
      no_of_gates: json['no_of_gates'] as int?,
      slug: json['slug'],
      status: json['status'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      update_at: json['update_at'] == null
          ? null
          : DateTime.parse(json['update_at'] as String),
      deleted_at: json['deleted_at'],
      user_id: json['user_id'] as int?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      warehouse_location: json['warehouse_location'] as String?,
    );

Map<String, dynamic> _$$WarehouseImplToJson(_$WarehouseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'warehouse_name': instance.warehouse_name,
      'manage_email': instance.manage_email,
      'warehouse_manager': instance.warehouse_manager,
      'phone': instance.phone,
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
      'warehouse_location': instance.warehouse_location,
    };
