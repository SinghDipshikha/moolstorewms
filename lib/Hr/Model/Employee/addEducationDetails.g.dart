// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addEducationDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddEducationDetailImpl _$$AddEducationDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$AddEducationDetailImpl(
      user_id: (json['user_id'] as num?)?.toInt(),
      updated_by: (json['updated_by'] as num?)?.toInt(),
      ssc_passing_year: (json['ssc_passing_year'] as num?)?.toInt(),
      ssc_passing_percentage: json['ssc_passing_percentage'],
      ssc_passing_grade: json['ssc_passing_grade'] as String?,
      ssc_passing_school: json['ssc_passing_school'] as String?,
      ssc_passing_university: json['ssc_passing_university'] as String?,
      highest_qualification: json['highest_qualification'] as String?,
      specialization: json['specialization'] as String?,
      hq_passing_year: (json['hq_passing_year'] as num?)?.toInt(),
      hq_college: json['hq_college'] as String?,
      hq_percentage: json['hq_percentage'],
    );

Map<String, dynamic> _$$AddEducationDetailImplToJson(
        _$AddEducationDetailImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'updated_by': instance.updated_by,
      'ssc_passing_year': instance.ssc_passing_year,
      'ssc_passing_percentage': instance.ssc_passing_percentage,
      'ssc_passing_grade': instance.ssc_passing_grade,
      'ssc_passing_school': instance.ssc_passing_school,
      'ssc_passing_university': instance.ssc_passing_university,
      'highest_qualification': instance.highest_qualification,
      'specialization': instance.specialization,
      'hq_passing_year': instance.hq_passing_year,
      'hq_college': instance.hq_college,
      'hq_percentage': instance.hq_percentage,
    };

_$AddEducationDetailUpdateImpl _$$AddEducationDetailUpdateImplFromJson(
        Map<String, dynamic> json) =>
    _$AddEducationDetailUpdateImpl(
      user_id: json['user_id'] as String? ?? "userId",
      updatedBy: json['updatedBy'] as String? ?? "updatedBy",
      ssc_passing_year:
          json['ssc_passing_year'] as String? ?? "ssc_passing_year",
      ssc_passing_percentage:
          json['ssc_passing_percentage'] as String? ?? "ssc_passing_percentage",
      ssc_passing_grade:
          json['ssc_passing_grade'] as String? ?? "ssc_passing_grade",
      ssc_passing_school:
          json['ssc_passing_school'] as String? ?? "ssc_passing_school",
      ssc_passing_university:
          json['ssc_passing_university'] as String? ?? "ssc_passing_university",
      highest_qualification:
          json['highest_qualification'] as String? ?? "highest_qualification",
      specialization: json['specialization'] as String? ?? "specialization",
      hq_passing_year: json['hq_passing_year'] as String? ?? "hq_passing_year",
      hq_college: json['hq_college'] as String? ?? "hq_college",
      hq_percentage: json['hq_percentage'] as String? ?? "hq_percentage",
    );

Map<String, dynamic> _$$AddEducationDetailUpdateImplToJson(
        _$AddEducationDetailUpdateImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'updatedBy': instance.updatedBy,
      'ssc_passing_year': instance.ssc_passing_year,
      'ssc_passing_percentage': instance.ssc_passing_percentage,
      'ssc_passing_grade': instance.ssc_passing_grade,
      'ssc_passing_school': instance.ssc_passing_school,
      'ssc_passing_university': instance.ssc_passing_university,
      'highest_qualification': instance.highest_qualification,
      'specialization': instance.specialization,
      'hq_passing_year': instance.hq_passing_year,
      'hq_college': instance.hq_college,
      'hq_percentage': instance.hq_percentage,
    };
