// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addReferralDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddReferralDetailImpl _$$AddReferralDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$AddReferralDetailImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      name: json['name'] as String?,
      company: json['company'] as String?,
      address: json['address'] as String?,
      designation: json['designation'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      email: json['email'] as String?,
      updatedBy: (json['updatedBy'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$AddReferralDetailImplToJson(
        _$AddReferralDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'company': instance.company,
      'address': instance.address,
      'designation': instance.designation,
      'mobileNumber': instance.mobileNumber,
      'email': instance.email,
      'updatedBy': instance.updatedBy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
