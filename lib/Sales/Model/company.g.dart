// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      id: json['id'] as int?,
      sellerCompanyDetailsID: json['sellerCompanyDetailsID'] as int?,
      user_id: json['user_id'] as int?,
      seller_company_id: json['seller_company_id'] as int?,
      phone_no: json['phone_no'] as String?,
      address: json['address'] as String?,
      state: json['state'] as String?,
      gst_no: json['gst_no'] as String?,
      company_name: json['company_name'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'],
      deleted_at: json['deleted_at'],
      status: json['status'],
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sellerCompanyDetailsID': instance.sellerCompanyDetailsID,
      'user_id': instance.user_id,
      'seller_company_id': instance.seller_company_id,
      'phone_no': instance.phone_no,
      'address': instance.address,
      'state': instance.state,
      'gst_no': instance.gst_no,
      'company_name': instance.company_name,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'status': instance.status,
    };
