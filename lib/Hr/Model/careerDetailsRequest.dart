import 'package:freezed_annotation/freezed_annotation.dart';

part 'careerDetailsRequest.freezed.dart';
part 'careerDetailsRequest.g.dart';

@freezed
class CareerDetailsRequest with _$CareerDetailsRequest {
  const factory CareerDetailsRequest({
    String? name_of_employer,
    String? designation,
    String? phone_no,
    DateTime? employment_date_from,
    DateTime? employment_date_to,
    int? monthly_salary_start,
    int? monthly_salary_end,
  }) = _CareerDetailsRequest;

  factory CareerDetailsRequest.fromJson(Map<String, Object?> json) =>
      _$CareerDetailsRequestFromJson(json);
}
