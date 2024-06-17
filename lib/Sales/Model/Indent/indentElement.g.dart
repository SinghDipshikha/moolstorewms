// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indentElement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndentElementImpl _$$IndentElementImplFromJson(Map<String, dynamic> json) =>
    _$IndentElementImpl(
      id: (json['id'] as num?)?.toInt(),
      customer_id: (json['customer_id'] as num?)?.toInt(),
      customer_name: json['customer_name'] as String?,
      indent_number: json['indent_number'] as String?,
      order_number: json['order_number'] as String?,
      vehicle_number: json['vehicle_number'] as String?,
      driver_name: json['driver_name'] as String?,
      driver_ph_number: json['driver_ph_number'] as String?,
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
    );

Map<String, dynamic> _$$IndentElementImplToJson(_$IndentElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_id': instance.customer_id,
      'customer_name': instance.customer_name,
      'indent_number': instance.indent_number,
      'order_number': instance.order_number,
      'vehicle_number': instance.vehicle_number,
      'driver_name': instance.driver_name,
      'driver_ph_number': instance.driver_ph_number,
      'dateTime': instance.dateTime?.toIso8601String(),
    };
