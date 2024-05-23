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
