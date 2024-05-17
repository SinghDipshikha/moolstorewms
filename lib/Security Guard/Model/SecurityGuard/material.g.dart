// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllMaterialEntryBySecurityGaurdImpl
    _$$GetAllMaterialEntryBySecurityGaurdImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllMaterialEntryBySecurityGaurdImpl(
          id: json['id'] as int?,
          vehicle_number: json['vehicle_number'] as String?,
          driver_name: json['driver_name'] as String?,
          product_name: json['product_name'] as String?,
          qty: json['qty'] as int?,
          unit: json['unit'] as int?,
          expiry_date: json['expiry_date'] == null
              ? null
              : DateTime.parse(json['expiry_date'] as String),
          status: json['status'],
          created_at: json['created_at'] == null
              ? null
              : DateTime.parse(json['created_at'] as String),
          material_from: json['material_from'],
        );

Map<String, dynamic> _$$GetAllMaterialEntryBySecurityGaurdImplToJson(
        _$GetAllMaterialEntryBySecurityGaurdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicle_number': instance.vehicle_number,
      'driver_name': instance.driver_name,
      'product_name': instance.product_name,
      'qty': instance.qty,
      'unit': instance.unit,
      'expiry_date': instance.expiry_date?.toIso8601String(),
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'material_from': instance.material_from,
    };
