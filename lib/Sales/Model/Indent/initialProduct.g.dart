// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initialProduct.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialProductImpl _$$InitialProductImplFromJson(Map<String, dynamic> json) =>
    _$InitialProductImpl(
      seller_purchase_order_id:
          (json['seller_purchase_order_id'] as num?)?.toInt(),
      ticket_id: json['ticket_id'] as String?,
      order_number: json['order_number'] as String?,
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      warehouse_name: json['warehouse_name'] as String?,
      product_id: (json['product_id'] as num?)?.toInt(),
      product_name: json['product_name'] as String?,
      ordered_qty: (json['ordered_qty'] as num?)?.toInt(),
      qty_balance: (json['qty_balance'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$InitialProductImplToJson(
        _$InitialProductImpl instance) =>
    <String, dynamic>{
      'seller_purchase_order_id': instance.seller_purchase_order_id,
      'ticket_id': instance.ticket_id,
      'order_number': instance.order_number,
      'warehouse_id': instance.warehouse_id,
      'warehouse_name': instance.warehouse_name,
      'product_id': instance.product_id,
      'product_name': instance.product_name,
      'ordered_qty': instance.ordered_qty,
      'qty_balance': instance.qty_balance,
    };
