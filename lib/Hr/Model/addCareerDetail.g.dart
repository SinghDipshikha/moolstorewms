// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addCareerDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCareerDetailImpl _$$AddCareerDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$AddCareerDetailImpl(
      id: (json['id'] as num?)?.toInt(),
      user_id: (json['user_id'] as num?)?.toInt(),
      name_of_employer: json['name_of_employer'] as String?,
      designation: json['designation'] as String?,
      reporting_to: json['reporting_to'],
      employment_date_from: json['employment_date_from'] == null
          ? null
          : DateTime.parse(json['employment_date_from'] as String),
      employment_date_to: json['employment_date_to'] == null
          ? null
          : DateTime.parse(json['employment_date_to'] as String),
      monthly_salary_start: (json['monthly_salary_start'] as num?)?.toInt(),
      monthly_salary_end: (json['monthly_salary_end'] as num?)?.toInt(),
      updated_by: json['updated_by'],
      sort_by: (json['sort_by'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'],
    );

Map<String, dynamic> _$$AddCareerDetailImplToJson(
        _$AddCareerDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'name_of_employer': instance.name_of_employer,
      'designation': instance.designation,
      'reporting_to': instance.reporting_to,
      'employment_date_from': instance.employment_date_from?.toIso8601String(),
      'employment_date_to': instance.employment_date_to?.toIso8601String(),
      'monthly_salary_start': instance.monthly_salary_start,
      'monthly_salary_end': instance.monthly_salary_end,
      'updated_by': instance.updated_by,
      'sort_by': instance.sort_by,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
    };
