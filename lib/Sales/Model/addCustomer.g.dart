// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addCustomer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCustomerImpl _$$AddCustomerImplFromJson(Map<String, dynamic> json) =>
    _$AddCustomerImpl(
      addedBy: (json['addedBy'] as num?)?.toInt(),
      name: json['name'] as String?,
      company_name: json['company_name'] as String?,
      phone: json['phone'] as String?,
      cin: json['cin'] as String?,
      gst_number: json['gst_number'] as String?,
      email: json['email'] as String?,
      state: json['state'] as String?,
      address: json['address'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$AddCustomerImplToJson(_$AddCustomerImpl instance) =>
    <String, dynamic>{
      'addedBy': instance.addedBy,
      'name': instance.name,
      'company_name': instance.company_name,
      'phone': instance.phone,
      'cin': instance.cin,
      'gst_number': instance.gst_number,
      'email': instance.email,
      'state': instance.state,
      'address': instance.address,
      'avatar': instance.avatar,
    };
