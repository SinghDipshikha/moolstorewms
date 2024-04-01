// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiateEmployee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitiateEmployeeImpl _$$InitiateEmployeeImplFromJson(
        Map<String, dynamic> json) =>
    _$InitiateEmployeeImpl(
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
    );

Map<String, dynamic> _$$InitiateEmployeeImplToJson(
        _$InitiateEmployeeImpl instance) =>
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
    };
