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
    @Default("user_id") String user_id,
    @Default("updated_by") String updated_by,
    @Default("gender") String gender,
    @Default("dob") String dob,
    @Default("blood_group") String blood_group,
    @Default("email") String email,
    @Default("aadhaar_number") String aadhaar_number,
    @Default("pf_number") String pf_number,
    @Default("pan_card") String pan_card,
    @Default("esic_number") String esic_number,
    @Default("have_passport") String have_passport,
    @Default("passport_number") String passport_number,
    @Default("passport_expiry_date") String passport_expiry_date,
    @Default("have_disability") String have_disability,
    @Default("disability_describe") String disability_describe,
    @Default("address") String address,
    @Default("state") String state,
    @Default("city") String city,
    @Default("pincode") String pincode,
    @Default("emergency_contact_no") String emergency_contact_no,
    @Default("emergency_contact_person") String emergency_contact_person,
    @Default("mailing_address_diffrent") String mailing_address_diffrent,
    @Default("mailing_address") String mailing_address,
  }) = _PersonalDetailsResponseUpdate;

  factory PersonalDetailsResponseUpdate.fromJson(Map<String, Object?> json) =>
      _$PersonalDetailsResponseUpdateFromJson(json);
}
