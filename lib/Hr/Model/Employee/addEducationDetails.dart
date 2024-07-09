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

@freezed
class AddEducationDetailUpdate with _$AddEducationDetailUpdate {
  const factory AddEducationDetailUpdate({
    // int? id,
    @Default("userId") String user_id,
    @Default("updatedBy") String updatedBy,
    @Default("ssc_passing_year") String ssc_passing_year,
    @Default("ssc_passing_percentage") String ssc_passing_percentage,
    @Default("ssc_passing_grade") String ssc_passing_grade,
    @Default("ssc_passing_school") String ssc_passing_school,
    @Default("ssc_passing_university") String ssc_passing_university,
    @Default("highest_qualification") String highest_qualification,
    @Default("specialization") String specialization,
    @Default("hq_passing_year") String hq_passing_year,
    @Default("hq_college") String hq_college,
    @Default("hq_percentage") String hq_percentage,
  }) = _AddEducationDetailUpdate;

  factory AddEducationDetailUpdate.fromJson(Map<String, Object?> json) =>
      _$AddEducationDetailUpdateFromJson(json);
}
