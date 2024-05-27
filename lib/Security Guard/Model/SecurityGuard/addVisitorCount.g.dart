// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addVisitorCount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisitorCountImpl _$$VisitorCountImplFromJson(Map<String, dynamic> json) =>
    _$VisitorCountImpl(
      count_in: (json['count_in'] as num?)?.toInt(),
      count_out: (json['count_out'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VisitorCountImplToJson(_$VisitorCountImpl instance) =>
    <String, dynamic>{
      'count_in': instance.count_in,
      'count_out': instance.count_out,
    };
