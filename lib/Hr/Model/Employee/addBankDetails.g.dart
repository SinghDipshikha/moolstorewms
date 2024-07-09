// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addBankDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddBankDetailsImpl _$$AddBankDetailsImplFromJson(Map<String, dynamic> json) =>
    _$AddBankDetailsImpl(
      id: (json['id'] as num?)?.toInt(),
      user_id: (json['user_id'] as num?)?.toInt(),
      account_name: json['account_name'] as String?,
      bankbank_nameName: json['bankbank_nameName'] as String?,
      account_no: json['account_no'] as String?,
      ifsc_no: json['ifsc_no'] as String?,
      branch_name: json['branch_name'] as String?,
      account_type: json['account_type'] as String?,
      updated_by: (json['updated_by'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$AddBankDetailsImplToJson(
        _$AddBankDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'account_name': instance.account_name,
      'bankbank_nameName': instance.bankbank_nameName,
      'account_no': instance.account_no,
      'ifsc_no': instance.ifsc_no,
      'branch_name': instance.branch_name,
      'account_type': instance.account_type,
      'updated_by': instance.updated_by,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };

_$AddBankDetailsUpdateImpl _$$AddBankDetailsUpdateImplFromJson(
        Map<String, dynamic> json) =>
    _$AddBankDetailsUpdateImpl(
      id: json['id'] as String? ?? "id",
      user_id: json['user_id'] as String? ?? "user_id",
      account_name: json['account_name'] as String? ?? "account_name",
      bankbank_nameName:
          json['bankbank_nameName'] as String? ?? "bankbank_nameName",
      account_no: json['account_no'] as String? ?? "account_no",
      ifsc_no: json['ifsc_no'] as String? ?? "ifsc_no",
      branch_name: json['branch_name'] as String? ?? "branch_name",
      account_type: json['account_type'] as String? ?? "account_type",
      updated_by: json['updated_by'] as String? ?? "updated_by",
      status: json['status'] as String? ?? "status",
      created_at: json['created_at'] as String? ?? "created_at",
      updated_at: json['updated_at'] as String? ?? "updated_at",
    );

Map<String, dynamic> _$$AddBankDetailsUpdateImplToJson(
        _$AddBankDetailsUpdateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'account_name': instance.account_name,
      'bankbank_nameName': instance.bankbank_nameName,
      'account_no': instance.account_no,
      'ifsc_no': instance.ifsc_no,
      'branch_name': instance.branch_name,
      'account_type': instance.account_type,
      'updated_by': instance.updated_by,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
