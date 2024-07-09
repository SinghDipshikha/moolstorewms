// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allDetailModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllDetailImpl _$$AllDetailImplFromJson(Map<String, dynamic> json) =>
    _$AllDetailImpl(
      bankDetails: json['bankDetails'] == null
          ? null
          : AddBankDetails.fromJson(
              json['bankDetails'] as Map<String, dynamic>),
      careerDetail: (json['careerDetail'] as List<dynamic>?)
          ?.map((e) => AddCareerDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      educationDetail: json['educationDetail'] == null
          ? null
          : AddEducationDetail.fromJson(
              json['educationDetail'] as Map<String, dynamic>),
      referralDetail: json['referralDetail'] == null
          ? null
          : AddReferralDetail.fromJson(
              json['referralDetail'] as Map<String, dynamic>),
      personalDetailsResponse: json['personalDetailsResponse'] == null
          ? null
          : PersonalDetailsResponse.fromJson(
              json['personalDetailsResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AllDetailImplToJson(_$AllDetailImpl instance) =>
    <String, dynamic>{
      'bankDetails': instance.bankDetails?.toJson(),
      'careerDetail': instance.careerDetail?.map((e) => e.toJson()).toList(),
      'educationDetail': instance.educationDetail?.toJson(),
      'referralDetail': instance.referralDetail?.toJson(),
      'personalDetailsResponse': instance.personalDetailsResponse?.toJson(),
    };
