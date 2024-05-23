// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'careerDetailsRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CareerDetailsRequestImpl _$$CareerDetailsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CareerDetailsRequestImpl(
      name_of_employer: json['name_of_employer'] as String?,
      designation: json['designation'] as String?,
      reporting_to: json['reporting_to'] as String?,
      employment_date_from: json['employment_date_from'] as String?,
      employment_date_to: json['employment_date_to'] as String?,
      monthly_salary_start: (json['monthly_salary_start'] as num?)?.toInt(),
      monthly_salary_end: (json['monthly_salary_end'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CareerDetailsRequestImplToJson(
        _$CareerDetailsRequestImpl instance) =>
    <String, dynamic>{
      'name_of_employer': instance.name_of_employer,
      'designation': instance.designation,
      'reporting_to': instance.reporting_to,
      'employment_date_from': instance.employment_date_from,
      'employment_date_to': instance.employment_date_to,
      'monthly_salary_start': instance.monthly_salary_start,
      'monthly_salary_end': instance.monthly_salary_end,
    };
