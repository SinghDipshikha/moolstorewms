// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addWarehouse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

_$AddWarehouseImpl _$$AddWarehouseImplFromJson(Map<String, dynamic> json) =>
    _$AddWarehouseImpl(
      warehouse_name: json['warehouse_name'] as String?,
      user_id: json['user_id'] as int?,
      warehouse_locationtion: json['warehouse_locationtion'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      manage_email: json['manage_email'] as String?,
      warehouse_managerger: json['warehouse_managerger'] as String?,
      phone: json['phone'] as int?,
      country_code: json['country_code'] as String?,
      no_of_chambers: json['no_of_chambers'] as int?,
      total_capacity: json['total_capacity'] as int?,
      no_of_docks: json['no_of_docks'] as int?,
      no_of_gates: json['no_of_gates'] as int?,
    );

Map<String, dynamic> _$$AddWarehouseImplToJson(_$AddWarehouseImpl instance) =>
    <String, dynamic>{
      'warehouse_name': instance.warehouse_name,
      'user_id': instance.user_id,
      'warehouse_locationtion': instance.warehouse_locationtion,
      'lat': instance.lat,
      'lng': instance.lng,
      'manage_email': instance.manage_email,
      'warehouse_managerger': instance.warehouse_managerger,
      'phone': instance.phone,
      'country_code': instance.country_code,
      'no_of_chambers': instance.no_of_chambers,
      'total_capacity': instance.total_capacity,
      'no_of_docks': instance.no_of_docks,
      'no_of_gates': instance.no_of_gates,
    };
