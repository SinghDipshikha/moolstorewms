// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllLabourEntryBySecurityGaurdImpl
    _$$GetAllLabourEntryBySecurityGaurdImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllLabourEntryBySecurityGaurdImpl(
          id: (json['id'] as num?)?.toInt(),
          added_by: (json['added_by'] as num?)?.toInt(),
          full_name: json['full_name'] as String?,
          mobile_number: json['mobile_number'] as String?,
          id_proof: json['id_proof'] as String?,
          warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
          invited_by: json['invited_by'] as String?,
          status: json['status'],
          created_at: json['created_at'] == null
              ? null
              : DateTime.parse(json['created_at'] as String),
          updated_at: json['updated_at'],
        );

Map<String, dynamic> _$$GetAllLabourEntryBySecurityGaurdImplToJson(
        _$GetAllLabourEntryBySecurityGaurdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'added_by': instance.added_by,
      'full_name': instance.full_name,
      'mobile_number': instance.mobile_number,
      'id_proof': instance.id_proof,
      'warehouse_id': instance.warehouse_id,
      'invited_by': instance.invited_by,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
    };
