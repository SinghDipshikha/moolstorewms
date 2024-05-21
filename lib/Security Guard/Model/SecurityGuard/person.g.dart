// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllPersonsBySecurityGaurdImpl _$$GetAllPersonsBySecurityGaurdImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllPersonsBySecurityGaurdImpl(
      id: (json['id'] as num?)?.toInt(),
      person_name: json['person_name'] as String?,
      person_phone: json['person_phone'] as String?,
      status: json['status'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$GetAllPersonsBySecurityGaurdImplToJson(
        _$GetAllPersonsBySecurityGaurdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'person_name': instance.person_name,
      'person_phone': instance.person_phone,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
    };
