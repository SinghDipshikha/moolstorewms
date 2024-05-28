// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addShiftDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddShiftDetailsImpl _$$AddShiftDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$AddShiftDetailsImpl(
      id: (json['id'] as num?)?.toInt(),
      added_by: (json['added_by'] as num?)?.toInt(),
      shift_name: json['shift_name'] as String?,
      shift_check_in: json['shift_check_in'] as String?,
      shift_check_out: json['shift_check_out'] as String?,
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$AddShiftDetailsImplToJson(
        _$AddShiftDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'added_by': instance.added_by,
      'shift_name': instance.shift_name,
      'shift_check_in': instance.shift_check_in,
      'shift_check_out': instance.shift_check_out,
      'warehouse_id': instance.warehouse_id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };
