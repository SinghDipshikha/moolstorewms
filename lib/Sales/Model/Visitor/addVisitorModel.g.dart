// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addVisitorModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddVisitorModelImpl _$$AddVisitorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddVisitorModelImpl(
      visitor_generate_by: json['visitor_generate_by'],
      visitor_name: json['visitor_name'] as String?,
      visitor_ph_number: json['visitor_ph_number'] as String?,
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      id_proof: json['id_proof'] as String?,
      purpose_of_visit: json['purpose_of_visit'] as String?,
      in_out_status: json['in_out_status'] as String?,
      validTill: json['validTill'] == null
          ? null
          : DateTime.parse(json['validTill'] as String),
    );

Map<String, dynamic> _$$AddVisitorModelImplToJson(
        _$AddVisitorModelImpl instance) =>
    <String, dynamic>{
      'visitor_generate_by': instance.visitor_generate_by,
      'visitor_name': instance.visitor_name,
      'visitor_ph_number': instance.visitor_ph_number,
      'warehouse_id': instance.warehouse_id,
      'id_proof': instance.id_proof,
      'purpose_of_visit': instance.purpose_of_visit,
      'in_out_status': instance.in_out_status,
      'validTill': instance.validTill?.toIso8601String(),
    };
