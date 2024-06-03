// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffEntryImpl _$$StaffEntryImplFromJson(Map<String, dynamic> json) =>
    _$StaffEntryImpl(
      id: (json['id'] as num?)?.toInt(),
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
      isBankDetails: (json['isBankDetails'] as num?)?.toInt(),
      isCareerDetails: (json['isCareerDetails'] as num?)?.toInt(),
      isEducationDetails: (json['isEducationDetails'] as num?)?.toInt(),
      isUserDetails: (json['isUserDetails'] as num?)?.toInt(),
      isDocumentDetails: (json['isDocumentDetails'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StaffEntryImplToJson(_$StaffEntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile': instance.mobile,
      'employeeId': instance.employeeId,
      'warehouseId': instance.warehouseId,
      'timestamp': instance.timestamp?.toIso8601String(),
      'personType': instance.personType,
      'isBankDetails': instance.isBankDetails,
      'isCareerDetails': instance.isCareerDetails,
      'isEducationDetails': instance.isEducationDetails,
      'isUserDetails': instance.isUserDetails,
      'isDocumentDetails': instance.isDocumentDetails,
    };
