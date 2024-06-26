// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verifyPoIndent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyPoIndentImpl _$$VerifyPoIndentImplFromJson(Map<String, dynamic> json) =>
    _$VerifyPoIndentImpl(
      status: json['status'] as String?,
      sellerPurchaseOrderId: (json['sellerPurchaseOrderId'] as num?)?.toInt(),
      vehicleNumber: json['vehicleNumber'] as String?,
      indentNumber: json['indentNumber'] as String?,
    );

Map<String, dynamic> _$$VerifyPoIndentImplToJson(
        _$VerifyPoIndentImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'sellerPurchaseOrderId': instance.sellerPurchaseOrderId,
      'vehicleNumber': instance.vehicleNumber,
      'indentNumber': instance.indentNumber,
    };
