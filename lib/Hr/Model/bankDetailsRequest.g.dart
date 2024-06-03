// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bankDetailsRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankDetailsRequestImpl _$$BankDetailsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BankDetailsRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      user_id: (json['user_id'] as num?)?.toInt(),
      updated_by: (json['updated_by'] as num?)?.toInt(),
      account_name: json['account_name'] as String?,
      ifsc_no: json['ifsc_no'] as String?,
      bank_name: json['bank_name'] as String?,
      account_no: json['account_no'] as String?,
      account_type: json['account_type'] as String?,
      branch_name: json['branch_name'] as String?,
    );

Map<String, dynamic> _$$BankDetailsRequestImplToJson(
        _$BankDetailsRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'updated_by': instance.updated_by,
      'account_name': instance.account_name,
      'ifsc_no': instance.ifsc_no,
      'bank_name': instance.bank_name,
      'account_no': instance.account_no,
      'account_type': instance.account_type,
      'branch_name': instance.branch_name,
    };
