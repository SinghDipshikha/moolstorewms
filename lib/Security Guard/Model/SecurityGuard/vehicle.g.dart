// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllVehicleEntryBySecurityGaurdImpl
    _$$GetAllVehicleEntryBySecurityGaurdImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllVehicleEntryBySecurityGaurdImpl(
          id: (json['id'] as num?)?.toInt(),
          driver_name: json['driver_name'] as String?,
          driver_phone: json['driver_phone'] as String?,
          vehicle_number: json['vehicle_number'] as String?,
          vehicle_types: json['vehicle_types'] as String?,
          status: json['status'],
          created_at: json['created_at'] == null
              ? null
              : DateTime.parse(json['created_at'] as String),
        );

Map<String, dynamic> _$$GetAllVehicleEntryBySecurityGaurdImplToJson(
        _$GetAllVehicleEntryBySecurityGaurdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'driver_name': instance.driver_name,
      'driver_phone': instance.driver_phone,
      'vehicle_number': instance.vehicle_number,
      'vehicle_types': instance.vehicle_types,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
    };
