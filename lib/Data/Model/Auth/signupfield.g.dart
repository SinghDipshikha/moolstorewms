// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signupfield.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupFieldImpl _$$SignupFieldImplFromJson(Map<String, dynamic> json) =>
    _$SignupFieldImpl(
      id: json['id'] as int,
      field_name: json['field_name'] as String,
      type: json['type'] as String,
      error_message_on_empt: json['error_message_on_empt'] as String?,
      invalid_message: json['invalid_message'] as String?,
      value: json['value'],
      required: json['required'] as int,
    );

Map<String, dynamic> _$$SignupFieldImplToJson(_$SignupFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'field_name': instance.field_name,
      'type': instance.type,
      'error_message_on_empt': instance.error_message_on_empt,
      'invalid_message': instance.invalid_message,
      'value': instance.value,
      'required': instance.required,
    };
