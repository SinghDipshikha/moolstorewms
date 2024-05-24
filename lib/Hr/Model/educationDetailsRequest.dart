import 'package:freezed_annotation/freezed_annotation.dart';

part 'educationDetailsRequest.freezed.dart';
part 'educationDetailsRequest.g.dart';

@freezed
class EducationDetailsRequest with _$EducationDetailsRequest {
  const factory EducationDetailsRequest({
    int? id,
    int? user_id,
    int? updated_by,
    String? ssc_passing_year,
    String? ssc_passing_percentage,
    String? ssc_passing_grade,
    String? ssc_passing_school,
    String? ssc_passing_university,
    String? highest_qualification,
    String? specialization,
    String? hq_passing_year,
    String? hq_college,
    String? hq_percentage,
  }) = _EducationDetailsRequest;

  factory EducationDetailsRequest.fromJson(Map<String, Object?> json) =>
      _$EducationDetailsRequestFromJson(json);
}
