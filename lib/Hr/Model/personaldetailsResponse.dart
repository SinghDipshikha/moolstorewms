import 'package:freezed_annotation/freezed_annotation.dart';

part 'personaldetailsResponse.freezed.dart';
part 'personaldetailsResponse.g.dart';

@freezed
class PersonalDetailsResponse with _$PersonalDetailsResponse {
  const factory PersonalDetailsResponse({
    int? user_id,
    String? pan_card,
    String? gst_number,
    String? blood_group,
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
    String? pincode,
    String? emergency_contact_no,
    String? emergency_contact_person,
    String? mailing_address_diffrent,
  }) = _PersonalDetails;

  factory PersonalDetailsResponse.fromJson(Map<String, Object?> json) =>
      _$PersonalDetailsResponseFromJson(json);
}
