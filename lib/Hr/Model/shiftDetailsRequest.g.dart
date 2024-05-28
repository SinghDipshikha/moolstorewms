// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shiftDetailsRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShiftDetailsRequestImpl _$$ShiftDetailsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ShiftDetailsRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      added_by: json['added_by'] as String?,
      shift_name: json['shift_name'] as String?,
      shift_check_in: json['shift_check_in'] == null
          ? null
          : DateTime.parse(json['shift_check_in'] as String),
      shift_check_out: json['shift_check_out'] == null
          ? null
          : DateTime.parse(json['shift_check_out'] as String),
      warehouse_id: json['warehouse_id'] as String?,
    );

Map<String, dynamic> _$$ShiftDetailsRequestImplToJson(
        _$ShiftDetailsRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'added_by': instance.added_by,
      'shift_name': instance.shift_name,
      'shift_check_in': instance.shift_check_in?.toIso8601String(),
      'shift_check_out': instance.shift_check_out?.toIso8601String(),
      'warehouse_id': instance.warehouse_id,
    };
