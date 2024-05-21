// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enterProduct.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EnterProductImpl _$$EnterProductImplFromJson(Map<String, dynamic> json) =>
    _$EnterProductImpl(
      product_no: json['product_no'] as String?,
      product_name: json['product_name'] as String?,
      hsn_number: json['hsn_number'] as String?,
      mrp: (json['mrp'] as num?)?.toDouble(),
      margin: (json['margin'] as num?)?.toInt(),
      description: json['description'] as String?,
      unit: (json['unit'] as num?)?.toInt(),
      gst_rate: (json['gst_rate'] as num?)?.toInt(),
      qty: (json['qty'] as num?)?.toInt(),
      uom: json['uom'] as String?,
      expiry_date: json['expiry_date'] == null
          ? null
          : DateTime.parse(json['expiry_date'] as String),
      total_tax: (json['total_tax'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EnterProductImplToJson(_$EnterProductImpl instance) =>
    <String, dynamic>{
      'product_no': instance.product_no,
      'product_name': instance.product_name,
      'hsn_number': instance.hsn_number,
      'mrp': instance.mrp,
      'margin': instance.margin,
      'description': instance.description,
      'unit': instance.unit,
      'gst_rate': instance.gst_rate,
      'qty': instance.qty,
      'uom': instance.uom,
      'expiry_date': instance.expiry_date?.toIso8601String(),
      'total_tax': instance.total_tax,
      'total': instance.total,
    };
