// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewIndentModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndentViewModelImpl _$$IndentViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IndentViewModelImpl(
      ticket_id: json['ticket_id'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      first_name: json['first_name'] as String?,
      last_name: json['last_name'],
      call_from_seller_company: json['call_from_seller_company'] as String?,
      name: json['name'] as String?,
      ship_from_seller_companany: json['ship_from_seller_companany'] as String?,
      ship_to_seller_companany: json['ship_to_seller_companany'] as String?,
      bill_to_seller_companany: json['bill_to_seller_companany'] as String?,
      product_details: (json['product_details'] as List<dynamic>?)
          ?.map((e) =>
              ProductsIndentViewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      check_in_out: (json['check_in_out'] as List<dynamic>?)
          ?.map(
              (e) => ChecksIndentViewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IndentViewModelImplToJson(
        _$IndentViewModelImpl instance) =>
    <String, dynamic>{
      'ticket_id': instance.ticket_id,
      'created_at': instance.created_at?.toIso8601String(),
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'call_from_seller_company': instance.call_from_seller_company,
      'name': instance.name,
      'ship_from_seller_companany': instance.ship_from_seller_companany,
      'ship_to_seller_companany': instance.ship_to_seller_companany,
      'bill_to_seller_companany': instance.bill_to_seller_companany,
      'product_details': instance.product_details,
      'check_in_out': instance.check_in_out,
    };

_$ChecksIndentViewModelImpl _$$ChecksIndentViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChecksIndentViewModelImpl(
      vehicle_types: json['vehicle_types'] as String?,
      vehicle_number: json['vehicle_number'] as String?,
      driver_name: json['driver_name'] as String?,
      checkin_type: json['checkin_type'] as String?,
      expected_date: json['expected_date'] == null
          ? null
          : DateTime.parse(json['expected_date'] as String),
      seller_product_value: json['seller_product_value'] as String?,
      product_name: json['product_name'] as String?,
      warehouse_name: json['warehouse_name'] as String?,
    );

Map<String, dynamic> _$$ChecksIndentViewModelImplToJson(
        _$ChecksIndentViewModelImpl instance) =>
    <String, dynamic>{
      'vehicle_types': instance.vehicle_types,
      'vehicle_number': instance.vehicle_number,
      'driver_name': instance.driver_name,
      'checkin_type': instance.checkin_type,
      'expected_date': instance.expected_date?.toIso8601String(),
      'seller_product_value': instance.seller_product_value,
      'product_name': instance.product_name,
      'warehouse_name': instance.warehouse_name,
    };

_$ProductsIndentViewModelImpl _$$ProductsIndentViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductsIndentViewModelImpl(
      qty: (json['qty'] as num?)?.toInt(),
      mrp: (json['mrp'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      unit: (json['unit'] as num?)?.toInt(),
      product_no: json['product_no'] as String?,
      product_name: json['product_name'] as String?,
      hsn_number: json['hsn_number'] as String?,
    );

Map<String, dynamic> _$$ProductsIndentViewModelImplToJson(
        _$ProductsIndentViewModelImpl instance) =>
    <String, dynamic>{
      'qty': instance.qty,
      'mrp': instance.mrp,
      'total': instance.total,
      'unit': instance.unit,
      'product_no': instance.product_no,
      'product_name': instance.product_name,
      'hsn_number': instance.hsn_number,
    };
