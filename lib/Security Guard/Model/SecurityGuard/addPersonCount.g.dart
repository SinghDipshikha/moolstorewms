// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addPersonCount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonCountImpl _$$PersonCountImplFromJson(Map<String, dynamic> json) =>
    _$PersonCountImpl(
      count_in: (json['count_in'] as num?)?.toInt(),
      count_out: (json['count_out'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PersonCountImplToJson(_$PersonCountImpl instance) =>
    <String, dynamic>{
      'count_in': instance.count_in,
      'count_out': instance.count_out,
    };
