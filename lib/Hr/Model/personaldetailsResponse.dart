import 'package:freezed_annotation/freezed_annotation.dart';

part 'personaldetailsResponse.freezed.dart';
part 'personaldetailsResponse.g.dart';

@freezed
class PersonalDetailsResponse with _$PersonalDetailsResponse {
  const factory PersonalDetailsResponse({
  int? id,
    int? user_id,
    String? pan_card,
    String? gst_number,
    String ?blood_group,
    dynamic dob,
    String ?gate_id,
    String ?aadhaar_number,
    String ?pf_number,
    String? esic_number,
    int ?have_passport,
    String? passport_number,
    String ?passport_expiry_date,
    int ?have_disability,
    String? disability_describe,
    String? address,
    String? state,
    String ?city,
    String ?pincode,
    String ?emergency_contact_no,
    String ? emergency_contact_person,
    String ?mailing_address_diffrent,
    String? mailing_address,
    int? updated_by,
    DateTime? created_at,
    dynamic  updated_at,
    String ?deleted_at,
    String? gender,
    String?email,
  }) = _PersonalDetails;

  factory PersonalDetailsResponse.fromJson(Map<String, Object?> json) =>
      _$PersonalDetailsResponseFromJson(json);
}



        
