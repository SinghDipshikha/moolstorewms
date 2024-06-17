// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indentInSubmit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndentInModelImpl _$$IndentInModelImplFromJson(Map<String, dynamic> json) =>
    _$IndentInModelImpl(
      user_id: (json['user_id'] as num).toInt(),
      customer_id: (json['customer_id'] as num?)?.toInt(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => EnterProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      vehicle_details: json['vehicle_details'] == null
          ? null
          : VehicleDetails.fromJson(
              json['vehicle_details'] as Map<String, dynamic>),
      order_number: json['order_number'] as String?,
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      min_temperature: (json['min_temperature'] as num?)?.toInt(),
      max_temperature: (json['max_temperature'] as num?)?.toInt(),
      expected_date: json['expected_date'] == null
          ? null
          : DateTime.parse(json['expected_date'] as String),
      temperature_unit: json['temperature_unit'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$IndentInModelImplToJson(_$IndentInModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'customer_id': instance.customer_id,
      'products': instance.products?.map((e) => e.toJson()).toList(),
      'vehicle_details': instance.vehicle_details?.toJson(),
      'order_number': instance.order_number,
      'warehouse_id': instance.warehouse_id,
      'min_temperature': instance.min_temperature,
      'max_temperature': instance.max_temperature,
      'expected_date': instance.expected_date?.toIso8601String(),
      'temperature_unit': instance.temperature_unit,
      'status': instance.status,
    };

_$VehicleDetailsImpl _$$VehicleDetailsImplFromJson(Map<String, dynamic> json) =>
    _$VehicleDetailsImpl(
      vehicle_type: json['vehicle_type'] as String?,
      vehicle_number: json['vehicle_number'] as String?,
      driver_name: json['driver_name'] as String?,
      driver_ph_number: json['driver_ph_number'] as String?,
      expected_date: json['expected_date'] == null
          ? null
          : DateTime.parse(json['expected_date'] as String),
    );

Map<String, dynamic> _$$VehicleDetailsImplToJson(
        _$VehicleDetailsImpl instance) =>
    <String, dynamic>{
      'vehicle_type': instance.vehicle_type,
      'vehicle_number': instance.vehicle_number,
      'driver_name': instance.driver_name,
      'driver_ph_number': instance.driver_ph_number,
      'expected_date': instance.expected_date?.toIso8601String(),
    };
