// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addVehicleCount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleCountImpl _$$VehicleCountImplFromJson(Map<String, dynamic> json) =>
    _$VehicleCountImpl(
      count_in: (json['count_in'] as num?)?.toInt(),
      count_out: (json['count_out'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$VehicleCountImplToJson(_$VehicleCountImpl instance) =>
    <String, dynamic>{
      'count_in': instance.count_in,
      'count_out': instance.count_out,
    };
