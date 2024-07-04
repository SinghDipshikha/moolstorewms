// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceEntryImpl _$$AttendanceEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceEntryImpl(
      employeeID: json['employeeID'] as String?,
      name: json['name'] as String?,
      designation: json['designation'] as String?,
      shift_check_in: json['shift_check_in'] == null
          ? null
          : DateTime.parse(json['shift_check_in'] as String),
      status: json['status'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AttendanceEntryImplToJson(
        _$AttendanceEntryImpl instance) =>
    <String, dynamic>{
      'employeeID': instance.employeeID,
      'name': instance.name,
      'designation': instance.designation,
      'shift_check_in': instance.shift_check_in?.toIso8601String(),
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'warehouse_id': instance.warehouse_id,
    };
