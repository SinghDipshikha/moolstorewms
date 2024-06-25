// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indentElement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndentElementImpl _$$IndentElementImplFromJson(Map<String, dynamic> json) =>
    _$IndentElementImpl(
      indent_number: json['indent_number'] as String?,
      order_number: json['order_number'] as String?,
      status: json['status'] as String?,
      vehicle_types: json['vehicle_types'] as String?,
      vehicle_number: json['vehicle_number'] as String?,
      driver_name: json['driver_name'] as String?,
      driver_ph_number: json['driver_ph_number'] as String?,
      expected_date: json['expected_date'] == null
          ? null
          : DateTime.parse(json['expected_date'] as String),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      seller_purchase_order_id:
          (json['seller_purchase_order_id'] as num?)?.toInt(),
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      warehouse_name: json['warehouse_name'] as String?,
    );

Map<String, dynamic> _$$IndentElementImplToJson(_$IndentElementImpl instance) =>
    <String, dynamic>{
      'indent_number': instance.indent_number,
      'order_number': instance.order_number,
      'status': instance.status,
      'vehicle_types': instance.vehicle_types,
      'vehicle_number': instance.vehicle_number,
      'driver_name': instance.driver_name,
      'driver_ph_number': instance.driver_ph_number,
      'expected_date': instance.expected_date?.toIso8601String(),
      'created_at': instance.created_at?.toIso8601String(),
      'seller_purchase_order_id': instance.seller_purchase_order_id,
      'warehouse_id': instance.warehouse_id,
      'warehouse_name': instance.warehouse_name,
    };
