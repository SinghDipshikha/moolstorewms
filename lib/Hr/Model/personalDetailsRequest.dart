import 'package:freezed_annotation/freezed_annotation.dart';

part 'personalDetailsRequest.freezed.dart';
part 'personalDetailsRequest.g.dart';

@freezed
class PersonalDetailsRequest with _$PersonalDetailsRequest {
  const factory PersonalDetailsRequest({
    String? user_id,
    String? pan_card,
    String? gst_number,
    String? blood_group,
    int? gate_id,
    String? pf_number,
    String? esic_number,
    String? have_passport,
    String? passport_number,
    DateTime? passport_expiry_date,
    String? have_disability,
    String? disability_describe,
    String? address,
    String? state,
    String? city,
    int? pincode,
    String? emergency_contact_no,
    String? emergency_contact_person,
    String? mailing_address_diffrent,
  }) = _PersonalDetailsRequest;

  factory PersonalDetailsRequest.fromJson(Map<String, Object?> json) =>
      _$PersonalDetailsRequestFromJson(json);
}
