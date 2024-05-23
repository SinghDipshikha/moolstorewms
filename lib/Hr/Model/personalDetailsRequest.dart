import 'package:freezed_annotation/freezed_annotation.dart';

part 'personalDetailsRequest.freezed.dart';
part 'personalDetailsRequest.g.dart';

@freezed
class PersonalDetailsRequest with _$PersonalDetailsRequest {
  const factory PersonalDetailsRequest({
    int? user_id,
    int? updated_by,
    String? gst_number,
    String? gender,
    String? dob,
    String? blood_group,
    String? email,
    String? aadhaar_number,
    String? pf_number,
    String? pan_card,
    String? esic_number,
    String? have_passport,
    String? passport_number,
    String? passport_expiry_date,
    String? have_disability,
    String? disability_describe,
    String? address,
    String? state,
    String? city,
    int? pincode,
    String? emergency_contact_no,
    String? emergency_contact_person,
    String? mailing_address_diffrent,
    String? mailing_address,
  }) = _PersonalDetailsRequest;

  factory PersonalDetailsRequest.fromJson(Map<String, Object?> json) =>
      _$PersonalDetailsRequestFromJson(json);
}
