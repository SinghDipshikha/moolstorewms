// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referralDetailsRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReferralDetailsRequestImpl _$$ReferralDetailsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralDetailsRequestImpl(
      userId: (json['userId'] as num?)?.toInt(),
      updatedBy: (json['updatedBy'] as num?)?.toInt(),
      name: json['name'] as String?,
      company: json['company'] as String?,
      designation: json['designation'] as String?,
      emailId: json['emailId'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$ReferralDetailsRequestImplToJson(
        _$ReferralDetailsRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'updatedBy': instance.updatedBy,
      'name': instance.name,
      'company': instance.company,
      'designation': instance.designation,
      'emailId': instance.emailId,
      'mobileNumber': instance.mobileNumber,
      'address': instance.address,
    };
