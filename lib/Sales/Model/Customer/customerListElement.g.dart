// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customerListElement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerListElementImpl _$$CustomerListElementImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerListElementImpl(
      id: (json['id'] as num?)?.toInt(),
      first_name: json['first_name'] as String?,
      customer_num: json['customer_num'] as String?,
      last_name: json['last_name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      company_name: json['company_name'] as String?,
      avatar: json['avatar'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CustomerListElementImplToJson(
        _$CustomerListElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'customer_num': instance.customer_num,
      'last_name': instance.last_name,
      'phone': instance.phone,
      'email': instance.email,
      'company_name': instance.company_name,
      'avatar': instance.avatar,
      'status': instance.status,
    };
