// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addWarehouse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddWarehouseImpl _$$AddWarehouseImplFromJson(Map<String, dynamic> json) =>
    _$AddWarehouseImpl(
      warehouseName: json['warehouseName'] as String?,
      userId: json['userId'] as int?,
      warehouseLocation: json['warehouseLocation'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      manageEmail: json['manageEmail'] as String?,
      warehouseManager: json['warehouseManager'] as String?,
      phone: json['phone'] as int?,
      countryCode: json['countryCode'] as String?,
      noOfChambers: json['noOfChambers'] as int?,
      totalCapacity: json['totalCapacity'] as int?,
      noOfDocks: json['noOfDocks'] as int?,
      noOfGates: json['noOfGates'] as int?,
    );

Map<String, dynamic> _$$AddWarehouseImplToJson(_$AddWarehouseImpl instance) =>
    <String, dynamic>{
      'warehouseName': instance.warehouseName,
      'userId': instance.userId,
      'warehouseLocation': instance.warehouseLocation,
      'lat': instance.lat,
      'lng': instance.lng,
      'manageEmail': instance.manageEmail,
      'warehouseManager': instance.warehouseManager,
      'phone': instance.phone,
      'countryCode': instance.countryCode,
      'noOfChambers': instance.noOfChambers,
      'totalCapacity': instance.totalCapacity,
      'noOfDocks': instance.noOfDocks,
      'noOfGates': instance.noOfGates,
    };

_$AddWarehouseFieldImpl _$$AddWarehouseFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$AddWarehouseFieldImpl(
      id: json['id'] as int,
      field_name: json['field_name'] as String,
      type: json['type'] as String?,
      error_message_on_empt: json['error_message_on_empt'] as String?,
      invalid_message: json['invalid_message'] as String?,
      value: json['value'],
      regex: json['regex'] as String?,
      selected_values: json['selected_values'] as List<dynamic>?,
      required: json['required'] as int?,
      isShow: json['isShow'] as int?,
    );

Map<String, dynamic> _$$AddWarehouseFieldImplToJson(
        _$AddWarehouseFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'field_name': instance.field_name,
      'type': instance.type,
      'error_message_on_empt': instance.error_message_on_empt,
      'invalid_message': instance.invalid_message,
      'value': instance.value,
      'regex': instance.regex,
      'selected_values': instance.selected_values,
      'required': instance.required,
      'isShow': instance.isShow,
    };
