// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WarehouseImpl _$$WarehouseImplFromJson(Map<String, dynamic> json) =>
    _$WarehouseImpl(
      id: json['id'],
      warehouseName: json['warehouseName'] as String?,
      manageEmail: json['manageEmail'] as String?,
      warehouseManager: json['warehouseManager'] as String?,
      phone: json['phone'] as String?,
      countryCode: json['countryCode'] as String?,
      noOfChambers: json['noOfChambers'] as int?,
      totalCapacity: (json['totalCapacity'] as num?)?.toDouble(),
      noOfDocks: json['noOfDocks'] as int?,
      noOfGates: json['noOfGates'] as int?,
      status: json['status'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updateAt: json['updateAt'] == null
          ? null
          : DateTime.parse(json['updateAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      warehouseLocation: json['warehouseLocation'] as String?,
    );

Map<String, dynamic> _$$WarehouseImplToJson(_$WarehouseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'warehouseName': instance.warehouseName,
      'manageEmail': instance.manageEmail,
      'warehouseManager': instance.warehouseManager,
      'phone': instance.phone,
      'countryCode': instance.countryCode,
      'noOfChambers': instance.noOfChambers,
      'totalCapacity': instance.totalCapacity,
      'noOfDocks': instance.noOfDocks,
      'noOfGates': instance.noOfGates,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updateAt': instance.updateAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'lat': instance.lat,
      'lng': instance.lng,
      'warehouseLocation': instance.warehouseLocation,
    };
