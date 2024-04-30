import 'package:freezed_annotation/freezed_annotation.dart';

part 'addCareerDetail.freezed.dart';
part 'addCareerDetail.g.dart';

@freezed
class AddCareerDetail with _$AddCareerDetail {
  const factory AddCareerDetail({
    int? id,
    String? name_of_employer,
    String? designation,
    String? phone_no,
    DateTime? employment_date_from,
    DateTime? employment_date_to,
    int? monthly_salary_start,
    int? monthly_salary_end,
  }) = _AddCareerDetail;

  factory AddCareerDetail.fromJson(Map<String, Object?> json) =>
      _$AddCareerDetailFromJson(json);
}
/*
      "id": 4,
      "name_of_employer": "vijay",
      "designation": "SE",
      "phone_no": "9123456780",
      "employment_date_from": "2022-03-05 00:00:00",
      "employment_date_to": "2022-03-08 00:00:00",
      "monthly_salary_start": 12000,
      "monthly_salary_end": 15000

 */