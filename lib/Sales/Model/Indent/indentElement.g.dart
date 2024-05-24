// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indentElement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndentElementImpl _$$IndentElementImplFromJson(Map<String, dynamic> json) =>
    _$IndentElementImpl(
      ticket_id: json['ticket_id'] as String?,
      order_number: json['order_number'] as String?,
      shipped_to_company_id: (json['shipped_to_company_id'] as num?)?.toInt(),
      shipped_to_company: json['shipped_to_company'] as String?,
      IndentElement_name: json['IndentElement_name'] as String?,
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
    );

Map<String, dynamic> _$$IndentElementImplToJson(_$IndentElementImpl instance) =>
    <String, dynamic>{
      'ticket_id': instance.ticket_id,
      'order_number': instance.order_number,
      'shipped_to_company_id': instance.shipped_to_company_id,
      'shipped_to_company': instance.shipped_to_company,
      'IndentElement_name': instance.IndentElement_name,
      'dateTime': instance.dateTime?.toIso8601String(),
    };
