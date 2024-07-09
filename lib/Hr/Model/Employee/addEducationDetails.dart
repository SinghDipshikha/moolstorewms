import 'package:freezed_annotation/freezed_annotation.dart';

part 'addEducationDetails.freezed.dart';
part 'addEducationDetails.g.dart';

@freezed
class AddEducationDetail with _$AddEducationDetail {
  const factory AddEducationDetail({

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
  }) = _AddEducationDetail;

  factory AddEducationDetail.fromJson(Map<String, Object?> json) =>
      _$AddEducationDetailFromJson(json);
}

