import 'package:freezed_annotation/freezed_annotation.dart';

part 'Personaldetails.freezed.dart';
part 'Personaldetails.g.dart';

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
/* 

//   "user_id": 68,
//   "pan_card": "jkhsdkujhfk",
//   "gst_number": "fdgsdf",
//   "blood_group": "dfg",
//   "pf_number": "dfdfgedtrer",
//   "esic_number": "dfgdfgfb",
//   "have_passport": "0",
//   "passport_number": "fdgfdg",
//   "passport_expiry_date": "2022-03-05 00:00:00",
//   "have_disability": "0",
//   "disability_describe": "fthfghf",
//   "address": "fghfg",
//   "state": "fghfghvbcn",
//   "city": "vbnvbn",
//   "pincode": "56456",
//   "emergency_contact_no": "456456456",
//   "emergency_contact_person": "fghbnvn",
//   "mailing_address_diffrent": "hfghfgh"

// */