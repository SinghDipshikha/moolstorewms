// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PurchaseOrder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseOrderImpl _$$PurchaseOrderImplFromJson(Map<String, dynamic> json) =>
    _$PurchaseOrderImpl(
      id: json['id'] as int?,
      order_number: json['order_number'] as String?,
      call_from_seller_companany_details:
          json['call_from_seller_companany_details'] as int?,
      ship_from_seller_companany_details:
          json['ship_from_seller_companany_details'] as int?,
      bill_to_seller_companany_details:
          json['bill_to_seller_companany_details'] as int?,
      ship_to_seller_companany_details:
          json['ship_to_seller_companany_details'] as int?,
      vehicle_types: json['vehicle_types'] as String?,
      vehicle_number: json['vehicle_number'] as String?,
      person_identity: json['person_identity'] as String?,
      indentity_type: json['indentity_type'] as String?,
      name: json['name'] as String?,
      persons: json['persons'] as String?,
      description: json['description'] as String?,
      total_tax: json['total_tax'] as int?,
      total: json['total'] as int?,
      expiry_date: json['expiry_date'] == null
          ? null
          : DateTime.parse(json['expiry_date'] as String),
      account_number: json['account_number'] as String?,
      vendor_id: json['vendor_id'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'],
      deleted_at: json['deleted_at'],
    );

Map<String, dynamic> _$$PurchaseOrderImplToJson(_$PurchaseOrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_number': instance.order_number,
      'call_from_seller_companany_details':
          instance.call_from_seller_companany_details,
      'ship_from_seller_companany_details':
          instance.ship_from_seller_companany_details,
      'bill_to_seller_companany_details':
          instance.bill_to_seller_companany_details,
      'ship_to_seller_companany_details':
          instance.ship_to_seller_companany_details,
      'vehicle_types': instance.vehicle_types,
      'vehicle_number': instance.vehicle_number,
      'person_identity': instance.person_identity,
      'indentity_type': instance.indentity_type,
      'name': instance.name,
      'persons': instance.persons,
      'description': instance.description,
      'total_tax': instance.total_tax,
      'total': instance.total,
      'expiry_date': instance.expiry_date?.toIso8601String(),
      'account_number': instance.account_number,
      'vendor_id': instance.vendor_id,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
