// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkInSubmit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckInModelImpl _$$CheckInModelImplFromJson(Map<String, dynamic> json) =>
    _$CheckInModelImpl(
      seller_purchase_order_id:
          (json['seller_purchase_order_id'] as num?)?.toInt(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Map<String, int>.from(e as Map))
          .toList(),
      vehicle_details: json['vehicle_details'] == null
          ? null
          : VehicleDetails.fromJson(
              json['vehicle_details'] as Map<String, dynamic>),
      checkin_type: json['checkin_type'] as String?,
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      expected_date: json['expected_date'] == null
          ? null
          : DateTime.parse(json['expected_date'] as String),
    );

Map<String, dynamic> _$$CheckInModelImplToJson(_$CheckInModelImpl instance) =>
    <String, dynamic>{
      'seller_purchase_order_id': instance.seller_purchase_order_id,
      'products': instance.products,
      'vehicle_details': instance.vehicle_details,
      'checkin_type': instance.checkin_type,
      'warehouse_id': instance.warehouse_id,
      'expected_date': instance.expected_date?.toIso8601String(),
    };

_$VehicleDetailsImpl _$$VehicleDetailsImplFromJson(Map<String, dynamic> json) =>
    _$VehicleDetailsImpl(
      vehicle_type: json['vehicle_type'] as String?,
      vehicle_number: json['vehicle_number'] as String?,
      driver_name: json['driver_name'] as String?,
      driver_ph_number: json['driver_ph_number'] as String?,
    );

Map<String, dynamic> _$$VehicleDetailsImplToJson(
        _$VehicleDetailsImpl instance) =>
    <String, dynamic>{
      'vehicle_type': instance.vehicle_type,
      'vehicle_number': instance.vehicle_number,
      'driver_name': instance.driver_name,
      'driver_ph_number': instance.driver_ph_number,
    };
