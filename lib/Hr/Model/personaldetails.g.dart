// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personaldetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonalDetailsImpl _$$PersonalDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonalDetailsImpl(
      user_id: (json['user_id'] as num?)?.toInt(),
      updated_by: (json['updated_by'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      blood_group: json['blood_group'] as String?,
      email: json['email'] as String?,
      aadhaar_number: json['aadhaar_number'] as String?,
      pf_number: json['pf_number'] as String?,
      pan_card: json['pan_card'] as String?,
      esic_number: json['esic_number'] as String?,
      have_passport: (json['have_passport'] as num?)?.toInt(),
      passport_number: json['passport_number'] as String?,
      passport_expiry_date: json['passport_expiry_date'] == null
          ? null
          : DateTime.parse(json['passport_expiry_date'] as String),
      have_disability: (json['have_disability'] as num?)?.toInt(),
      disability_describe: json['disability_describe'] as String?,
      address: json['address'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      pincode: (json['pincode'] as num?)?.toInt(),
      emergency_contact_no: json['emergency_contact_no'] as String?,
      emergency_contact_person: json['emergency_contact_person'] as String?,
      mailing_address_diffrent:
          (json['mailing_address_diffrent'] as num?)?.toInt(),
      mailing_address: json['mailing_address'] as String?,
    );

Map<String, dynamic> _$$PersonalDetailsImplToJson(
        _$PersonalDetailsImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'updated_by': instance.updated_by,
      'gender': instance.gender,
      'dob': instance.dob?.toIso8601String(),
      'blood_group': instance.blood_group,
      'email': instance.email,
      'aadhaar_number': instance.aadhaar_number,
      'pf_number': instance.pf_number,
      'pan_card': instance.pan_card,
      'esic_number': instance.esic_number,
      'have_passport': instance.have_passport,
      'passport_number': instance.passport_number,
      'passport_expiry_date': instance.passport_expiry_date?.toIso8601String(),
      'have_disability': instance.have_disability,
      'disability_describe': instance.disability_describe,
      'address': instance.address,
      'state': instance.state,
      'city': instance.city,
      'pincode': instance.pincode,
      'emergency_contact_no': instance.emergency_contact_no,
      'emergency_contact_person': instance.emergency_contact_person,
      'mailing_address_diffrent': instance.mailing_address_diffrent,
      'mailing_address': instance.mailing_address,
    };

_$PersonalDetailsResponseUpdateImpl
    _$$PersonalDetailsResponseUpdateImplFromJson(Map<String, dynamic> json) =>
        _$PersonalDetailsResponseUpdateImpl(
          user_id: json['user_id'] as String? ?? "user_id",
          updated_by: json['updated_by'] as String? ?? "updated_by",
          gender: json['gender'] as String? ?? "gender",
          dob: json['dob'] as String? ?? "dob",
          blood_group: json['blood_group'] as String? ?? "blood_group",
          email: json['email'] as String? ?? "email",
          aadhaar_number: json['aadhaar_number'] as String? ?? "aadhaar_number",
          pf_number: json['pf_number'] as String? ?? "pf_number",
          pan_card: json['pan_card'] as String? ?? "pan_card",
          esic_number: json['esic_number'] as String? ?? "esic_number",
          have_passport: json['have_passport'] as String? ?? "have_passport",
          passport_number:
              json['passport_number'] as String? ?? "passport_number",
          passport_expiry_date:
              json['passport_expiry_date'] as String? ?? "passport_expiry_date",
          have_disability:
              json['have_disability'] as String? ?? "have_disability",
          disability_describe:
              json['disability_describe'] as String? ?? "disability_describe",
          address: json['address'] as String? ?? "address",
          state: json['state'] as String? ?? "state",
          city: json['city'] as String? ?? "city",
          pincode: json['pincode'] as String? ?? "pincode",
          emergency_contact_no:
              json['emergency_contact_no'] as String? ?? "emergency_contact_no",
          emergency_contact_person:
              json['emergency_contact_person'] as String? ??
                  "emergency_contact_person",
          mailing_address_diffrent:
              json['mailing_address_diffrent'] as String? ??
                  "mailing_address_diffrent",
          mailing_address:
              json['mailing_address'] as String? ?? "mailing_address",
        );

Map<String, dynamic> _$$PersonalDetailsResponseUpdateImplToJson(
        _$PersonalDetailsResponseUpdateImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'updated_by': instance.updated_by,
      'gender': instance.gender,
      'dob': instance.dob,
      'blood_group': instance.blood_group,
      'email': instance.email,
      'aadhaar_number': instance.aadhaar_number,
      'pf_number': instance.pf_number,
      'pan_card': instance.pan_card,
      'esic_number': instance.esic_number,
      'have_passport': instance.have_passport,
      'passport_number': instance.passport_number,
      'passport_expiry_date': instance.passport_expiry_date,
      'have_disability': instance.have_disability,
      'disability_describe': instance.disability_describe,
      'address': instance.address,
      'state': instance.state,
      'city': instance.city,
      'pincode': instance.pincode,
      'emergency_contact_no': instance.emergency_contact_no,
      'emergency_contact_person': instance.emergency_contact_person,
      'mailing_address_diffrent': instance.mailing_address_diffrent,
      'mailing_address': instance.mailing_address,
    };
