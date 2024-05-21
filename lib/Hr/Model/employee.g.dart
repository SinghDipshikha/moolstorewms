// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeImpl _$$EmployeeImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeImpl(
      name: json['name'] as String?,
      mobile: json['mobile'] as String?,
      employeeId: json['employeeId'] as String?,
      warehouseId: json['warehouseId'],
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      personType: (json['personType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isShow: (json['isShow'] as num?)?.toInt(),
      isBankDetails: (json['isBankDetails'] as num?)?.toInt(),
      isCareerDetails: (json['isCareerDetails'] as num?)?.toInt(),
      isEducationDetails: (json['isEducationDetails'] as num?)?.toInt(),
      isUserDetails: (json['isUserDetails'] as num?)?.toInt(),
      isDocumentDetails: (json['isDocumentDetails'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EmployeeImplToJson(_$EmployeeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobile': instance.mobile,
      'employeeId': instance.employeeId,
      'warehouseId': instance.warehouseId,
      'timestamp': instance.timestamp?.toIso8601String(),
      'personType': instance.personType,
      'isShow': instance.isShow,
      'isBankDetails': instance.isBankDetails,
      'isCareerDetails': instance.isCareerDetails,
      'isEducationDetails': instance.isEducationDetails,
      'isUserDetails': instance.isUserDetails,
      'isDocumentDetails': instance.isDocumentDetails,
    };
