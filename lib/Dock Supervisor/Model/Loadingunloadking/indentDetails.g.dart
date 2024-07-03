// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indentDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndentDetailsImpl _$$IndentDetailsImplFromJson(Map<String, dynamic> json) =>
    _$IndentDetailsImpl(
      indent_number: json['indent_number'] as String?,
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      in_out_status: json['in_out_status'] as String?,
      product_details: (json['product_details'] as List<dynamic>?)
          ?.map((e) => ProductDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IndentDetailsImplToJson(_$IndentDetailsImpl instance) =>
    <String, dynamic>{
      'indent_number': instance.indent_number,
      'warehouse_id': instance.warehouse_id,
      'in_out_status': instance.in_out_status,
      'product_details':
          instance.product_details?.map((e) => e.toJson()).toList(),
    };

_$ProductDetailImpl _$$ProductDetailImplFromJson(Map<String, dynamic> json) =>
    _$ProductDetailImpl(
      product_id: (json['product_id'] as num).toInt(),
      product_name: json['product_name'] as String,
      qty: (json['qty'] as num).toInt(),
      unit: (json['unit'] as num).toInt(),
      expiry_date: json['expiry_date'] == null
          ? null
          : DateTime.parse(json['expiry_date'] as String),
    );

Map<String, dynamic> _$$ProductDetailImplToJson(_$ProductDetailImpl instance) =>
    <String, dynamic>{
      'product_id': instance.product_id,
      'product_name': instance.product_name,
      'qty': instance.qty,
      'unit': instance.unit,
      'expiry_date': instance.expiry_date?.toIso8601String(),
    };
