import 'package:freezed_annotation/freezed_annotation.dart';

part 'personalDetails.freezed.dart';
part 'personalDetails.g.dart';
@freezed
class PersonalDetails with _$PersonalDetails {
  const factory PersonalDetails({
    int? user_id ,
    String? pan_card ,
    String? gst_number ,
    String? blood_group ,
    String? pf_number ,
    String? esic_number ,
    String? have_passport ,
    String? passport_number ,
    DateTime? passport_expiry_date ,
    String? have_disability ,
    String? disability_describe ,
    String? address ,
    String? state ,
    String? city ,
    String? pincode ,
    String? emergency_contact_no ,
    String? emergency_contact_person ,
    String? mailing_address_diffrent ,
  }) = _PersonalDetails;

  factory PersonalDetails.fromJson(Map<String, Object?> json) =>
      _$PersonalDetailsFromJson(json);
}