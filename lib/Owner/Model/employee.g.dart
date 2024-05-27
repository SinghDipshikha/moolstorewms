// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeImpl _$$EmployeeImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeImpl(
      name: json['name'] as String?,
      mobile: json['mobile'] as String?,
      employeeID: json['employeeID'] as String?,
      warehouseID: json['warehouseID'],
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      status: (json['status'] as num?)?.toInt(),
      personType: (json['personType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isShow: (json['isShow'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EmployeeImplToJson(_$EmployeeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobile': instance.mobile,
      'employeeID': instance.employeeID,
      'warehouseID': instance.warehouseID,
      'timestamp': instance.timestamp?.toIso8601String(),
      'status': instance.status,
      'personType': instance.personType,
      'isShow': instance.isShow,
    };
