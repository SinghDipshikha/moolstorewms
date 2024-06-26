import 'package:freezed_annotation/freezed_annotation.dart';

part 'personaldetails.freezed.dart';
part 'personaldetails.g.dart';

@freezed
class PersonalDetailsResponse with _$PersonalDetailsResponse {
  const factory PersonalDetailsResponse({
    // int? id,
    int? user_id,
    int? updated_by,
    String? gender,
    DateTime? dob,
    String? blood_group,
    String? email,
    String? aadhaar_number,
    String? pf_number,
    String? pan_card,
    String? esic_number,
    int? have_passport,
    String? passport_number,
    DateTime? passport_expiry_date,
    int? have_disability,
    String? disability_describe,
    String? address,
    String? state,
    String? city,
    int? pincode,
    String? emergency_contact_no,
    String? emergency_contact_person,
    int? mailing_address_diffrent,
    String? mailing_address,
  }) = _PersonalDetails;

  factory PersonalDetailsResponse.fromJson(Map<String, Object?> json) =>
      _$PersonalDetailsResponseFromJson(json);
}


@freezed
class PersonalDetailsResponseUpdate with _$PersonalDetailsResponseUpdate {
  const factory PersonalDetailsResponseUpdate({
    // int? id,
    int? user_id,
    int? updated_by,
    String? gender,
    DateTime? dob,
    String? blood_group,
    String? email,
    String? aadhaar_number,
    String? pf_number,
    String? pan_card,
    String? esic_number,
    int? have_passport,
    String? passport_number,
    DateTime? passport_expiry_date,
    int? have_disability,
    String? disability_describe,
    String? address,
    String? state,
    String? city,
    int? pincode,
    String? emergency_contact_no,
    String? emergency_contact_person,
    int? mailing_address_diffrent,
    String? mailing_address,
  }) = _PersonalDetailsResponseUpdate;

  factory PersonalDetailsResponseUpdate.fromJson(Map<String, Object?> json) =>
      _$PersonalDetailsResponseUpdateFromJson(json);
}
