// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employeeEntry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeEntryImpl _$$EmployeeEntryImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeEntryImpl(
      employeeId: json['employeeId'],
      name: json['name'],
      mobile: json['mobile'],
      status: json['status'] as String?,
      date: json['date'],
      time: json['time'],
      gate: json['gate'] as String?,
    );

Map<String, dynamic> _$$EmployeeEntryImplToJson(_$EmployeeEntryImpl instance) =>
    <String, dynamic>{
      'employeeId': instance.employeeId,
      'name': instance.name,
      'mobile': instance.mobile,
      'status': instance.status,
      'date': instance.date,
      'time': instance.time,
      'gate': instance.gate,
    };
