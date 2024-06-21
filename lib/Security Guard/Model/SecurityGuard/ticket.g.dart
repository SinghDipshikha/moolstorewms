// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketSGImpl _$$TicketSGImplFromJson(Map<String, dynamic> json) =>
    _$TicketSGImpl(
      indent_number: json['indent_number'] as String?,
      ticket_generate_by: (json['ticket_generate_by'] as num?)?.toInt(),
      employee_id: json['employee_id'] as String?,
      visitor_name: json['visitor_name'] as String?,
      visitor_ph_number: json['visitor_ph_number'] as String?,
      does_have_vehicle: json['does_have_vehicle'] as String?,
      vehicle_number: json['vehicle_number'] as String?,
      vehicle_types: json['vehicle_types'] as String?,
      material_inside: json['material_inside'] as String?,
      products: json['products'] as String?,
      status: json['status'] as String?,
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$TicketSGImplToJson(_$TicketSGImpl instance) =>
    <String, dynamic>{
      'indent_number': instance.indent_number,
      'ticket_generate_by': instance.ticket_generate_by,
      'employee_id': instance.employee_id,
      'visitor_name': instance.visitor_name,
      'visitor_ph_number': instance.visitor_ph_number,
      'does_have_vehicle': instance.does_have_vehicle,
      'vehicle_number': instance.vehicle_number,
      'vehicle_types': instance.vehicle_types,
      'material_inside': instance.material_inside,
      'products': instance.products,
      'status': instance.status,
      'warehouse_id': instance.warehouse_id,
      'created_at': instance.created_at?.toIso8601String(),
    };

_$TicketSLImpl _$$TicketSLImplFromJson(Map<String, dynamic> json) =>
    _$TicketSLImpl(
      id: (json['id'] as num?)?.toInt(),
      indent_number: json['indent_number'] as String?,
      order_number: json['order_number'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      min_temperature: (json['min_temperature'] as num?)?.toInt(),
      max_temperature: (json['max_temperature'] as num?)?.toInt(),
      temperature_unit: json['temperature_unit'] as String?,
      warehouse_name: json['warehouse_name'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'],
      personType: json['personType'] as String?,
      designation: (json['designation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$TicketSLImplToJson(_$TicketSLImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'indent_number': instance.indent_number,
      'order_number': instance.order_number,
      'created_at': instance.created_at?.toIso8601String(),
      'warehouse_id': instance.warehouse_id,
      'min_temperature': instance.min_temperature,
      'max_temperature': instance.max_temperature,
      'temperature_unit': instance.temperature_unit,
      'warehouse_name': instance.warehouse_name,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'personType': instance.personType,
      'designation': instance.designation,
    };
