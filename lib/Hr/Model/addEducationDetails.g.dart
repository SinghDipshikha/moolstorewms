// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addEducationDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddEducationDetailImpl _$$AddEducationDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$AddEducationDetailImpl(
      id: (json['id'] as num?)?.toInt(),
      user_id: (json['user_id'] as num?)?.toInt(),
      ssc_passing_year: json['ssc_passing_year'] as String?,
      ssc_passing_percentage: json['ssc_passing_percentage'] as String?,
      ssc_passing_grade: json['ssc_passing_grade'] as String?,
      ssc_passing_school: json['ssc_passing_school'] as String?,
      ssc_passing_university: json['ssc_passing_university'] as String?,
      highest_qualification: json['highest_qualification'] as String?,
      specialization: json['specialization'] as String?,
      hq_passing_year: (json['hq_passing_year'] as num?)?.toInt(),
      hq_college: json['hq_college'] as String?,
      hq_percentage: json['hq_percentage'] as String?,
      updated_by: (json['updated_by'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$AddEducationDetailImplToJson(
        _$AddEducationDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
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
      'updated_by': instance.updated_by,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };
