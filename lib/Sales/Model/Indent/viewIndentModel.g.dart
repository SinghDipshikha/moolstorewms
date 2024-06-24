// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewIndentModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndentViewModelImpl _$$IndentViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IndentViewModelImpl(
      id: (json['id'] as num?)?.toInt(),
      indent_number: json['indent_number'] as String?,
      order_number: json['order_number'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      min_temperature: (json['min_temperature'] as num?)?.toInt(),
      max_temperature: (json['max_temperature'] as num?)?.toInt(),
      warehouse_name: json['warehouse_name'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'],
      personType: json['personType'] as String?,
      name: json['name'] as String?,
      designation: (json['designation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      customer_details: (json['customer_details'] as List<dynamic>?)
          ?.map((e) => CustomerListElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      product_details: (json['product_details'] as List<dynamic>?)
          ?.map((e) => EnterProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      vehicle_details: (json['vehicle_details'] as List<dynamic>?)
          ?.map((e) => VehicleDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IndentViewModelImplToJson(
        _$IndentViewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'indent_number': instance.indent_number,
      'order_number': instance.order_number,
      'created_at': instance.created_at?.toIso8601String(),
      'warehouse_id': instance.warehouse_id,
      'min_temperature': instance.min_temperature,
      'max_temperature': instance.max_temperature,
      'warehouse_name': instance.warehouse_name,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'personType': instance.personType,
      'name': instance.name,
      'designation': instance.designation,
      'customer_details':
          instance.customer_details?.map((e) => e.toJson()).toList(),
      'product_details':
          instance.product_details?.map((e) => e.toJson()).toList(),
      'vehicle_details':
          instance.vehicle_details?.map((e) => e.toJson()).toList(),
    };
