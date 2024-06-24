// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addProduct.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllProductEntryBySecurityGaurdImpl
    _$$GetAllProductEntryBySecurityGaurdImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllProductEntryBySecurityGaurdImpl(
          product_id: (json['product_id'] as num?)?.toInt(),
          product_name: json['product_name'] as String?,
          qty: (json['qty'] as num?)?.toInt(),
          unit: (json['unit'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$GetAllProductEntryBySecurityGaurdImplToJson(
        _$GetAllProductEntryBySecurityGaurdImpl instance) =>
    <String, dynamic>{
      'product_id': instance.product_id,
      'product_name': instance.product_name,
      'qty': instance.qty,
      'unit': instance.unit,
    };
