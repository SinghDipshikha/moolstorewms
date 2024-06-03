// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addShift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddShiftImpl _$$AddShiftImplFromJson(Map<String, dynamic> json) =>
    _$AddShiftImpl(
      id: (json['id'] as num?)?.toInt(),
      added_by: (json['added_by'] as num?)?.toInt(),
      shift_name: json['shift_name'] as String?,
      shift_check_in: json['shift_check_in'] as String?,
      shift_check_out: json['shift_check_out'] as String?,
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'],
    );

Map<String, dynamic> _$$AddShiftImplToJson(_$AddShiftImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'added_by': instance.added_by,
      'shift_name': instance.shift_name,
      'shift_check_in': instance.shift_check_in,
      'shift_check_out': instance.shift_check_out,
      'warehouse_id': instance.warehouse_id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
    };
