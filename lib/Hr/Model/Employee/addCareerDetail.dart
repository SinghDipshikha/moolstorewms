import 'package:freezed_annotation/freezed_annotation.dart';

part 'addCareerDetail.freezed.dart';
part 'addCareerDetail.g.dart';

@freezed
class AddCareerDetail with _$AddCareerDetail {
  const factory AddCareerDetail({
    int? id,
    int? user_id,
    String? name_of_employer,
    String? designation,
    dynamic reporting_to,
    DateTime? employment_date_from,
    DateTime? employment_date_to,
    int? monthly_salary_start,
    int? monthly_salary_end,
    dynamic updated_by,
    int? sort_by,
    int? status,
    DateTime? created_at,
    dynamic updated_at,
  }) = _AddCareerDetail;

  factory AddCareerDetail.fromJson(Map<String, Object?> json) =>
      _$AddCareerDetailFromJson(json);
}

@freezed
class AddCareerDetailUpdate with _$AddCareerDetailUpdate {
  const factory AddCareerDetailUpdate({
    @Default("id") String id,
    @Default("user_id") String user_id,
    @Default("name_of_employer") String name_of_employer,
    @Default("designation") String designation,
    @Default("reporting_to") String reporting_to,
    @Default("employment_date_from") String employement_date_from,
    @Default("employment_date_to") String employment_date_to,
    @Default("monthly_salary_start") String monthly_salary_start,
    @Default("monthly_salary_end") String monthly_salary_end,
    @Default("updated_by") String updated_by,
    @Default("sort_by") String sort_by,
    @Default("status") String status,
    @Default("created_at") created_at,
    @Default("updated_at") updated_at,
  }) = AddCareerDetailUpdate;

  factory AddCareerDetailUpdate.fromJson(Map<String, Object?> json) =>
      _$AddCareerDetailUpdateFromJson(json);
}