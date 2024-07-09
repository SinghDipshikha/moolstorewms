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

_$AddReferralDetailUpdateImpl _$$AddReferralDetailUpdateImplFromJson(
        Map<String, dynamic> json) =>
    _$AddReferralDetailUpdateImpl(
      id: json['id'] as String? ?? "id",
      userId: json['userId'] as String? ?? "userId",
      name: json['name'] as String? ?? "name",
      company: json['company'] as String? ?? "company",
      address: json['address'] as String? ?? "address",
      designation: json['designation'] as String? ?? "designation",
      mobileNumber: json['mobileNumber'] as String? ?? "mobileNumber",
      email: json['email'] as String? ?? "email",
      updatedBy: json['updatedBy'] as String? ?? "updatedBy",
      createdAt: json['createdAt'] as String? ?? "createdAt",
      updatedAt: json['updatedAt'] as String? ?? "updatedAt",
    );

Map<String, dynamic> _$$AddReferralDetailUpdateImplToJson(
        _$AddReferralDetailUpdateImpl instance) =>
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
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
