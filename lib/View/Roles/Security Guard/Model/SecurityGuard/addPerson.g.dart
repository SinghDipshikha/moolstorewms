// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addPerson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddPersonBySecurityGaurdImpl _$$AddPersonBySecurityGaurdImplFromJson(
        Map<String, dynamic> json) =>
    _$AddPersonBySecurityGaurdImpl(
      id: json['id'] as int?,
      ticket_generate_by: json['ticket_generate_by'] as int?,
      open_visit_ticket_number: json['open_visit_ticket_number'] as String?,
      visitor_name: json['visitor_name'] as String?,
      visitor_ph_number: json['visitor_ph_number'] as String?,
      does_have_vehicle: json['does_have_vehicle'] as String?,
      vehicle_number: json['vehicle_number'] as String?,
      in_out_status: json['in_out_status'] as String?,
      material_inside: json['material_inside'] as String?,
      products_data: json['products_data'] as String?,
      status: json['status'],
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'],
    );

Map<String, dynamic> _$$AddPersonBySecurityGaurdImplToJson(
        _$AddPersonBySecurityGaurdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticket_generate_by': instance.ticket_generate_by,
      'open_visit_ticket_number': instance.open_visit_ticket_number,
      'visitor_name': instance.visitor_name,
      'visitor_ph_number': instance.visitor_ph_number,
      'does_have_vehicle': instance.does_have_vehicle,
      'vehicle_number': instance.vehicle_number,
      'in_out_status': instance.in_out_status,
      'material_inside': instance.material_inside,
      'products_data': instance.products_data,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
    };
