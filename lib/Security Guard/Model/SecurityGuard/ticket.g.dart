// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllTicketListBySecurityGuardImpl
    _$$GetAllTicketListBySecurityGuardImplFromJson(Map<String, dynamic> json) =>
        _$GetAllTicketListBySecurityGuardImpl(
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

Map<String, dynamic> _$$GetAllTicketListBySecurityGuardImplToJson(
        _$GetAllTicketListBySecurityGuardImpl instance) =>
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
