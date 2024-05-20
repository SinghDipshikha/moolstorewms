// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addWarehouseField.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddWarehiuseFieldImpl _$$AddWarehiuseFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$AddWarehiuseFieldImpl(
      id: (json['id'] as num).toInt(),
      field_name: json['field_name'] as String,
      type: json['type'] as String?,
      error_message_on_empt: json['error_message_on_empt'] as String?,
      invalid_message: json['invalid_message'] as String?,
      value: json['value'],
      regex: json['regex'] as String?,
      selected_values: json['selected_values'] as List<dynamic>?,
      required: (json['required'] as num?)?.toInt(),
      isShow: (json['isShow'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AddWarehiuseFieldImplToJson(
        _$AddWarehiuseFieldImpl instance) =>
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
