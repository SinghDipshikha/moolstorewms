// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referralDetailsRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReferralDetailsRequestImpl _$$ReferralDetailsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ReferralDetailsRequestImpl(
      user_id: (json['user_id'] as num?)?.toInt(),
      updated_by: (json['updated_by'] as num?)?.toInt(),
      name: json['name'] as String?,
      company: json['company'] as String?,
      designation: json['designation'] as String?,
      email_id: json['email_id'] as String?,
      mobile_number: json['mobile_number'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$ReferralDetailsRequestImplToJson(
        _$ReferralDetailsRequestImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'updated_by': instance.updated_by,
      'name': instance.name,
      'company': instance.company,
      'designation': instance.designation,
      'email_id': instance.email_id,
      'mobile_number': instance.mobile_number,
      'address': instance.address,
    };
