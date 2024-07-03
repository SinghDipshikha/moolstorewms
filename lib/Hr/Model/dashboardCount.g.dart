// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboardCount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardCountImpl _$$DashboardCountImplFromJson(Map<String, dynamic> json) =>
    _$DashboardCountImpl(
      totalEmp: (json['totalEmp'] as num?)?.toInt(),
      presentEmp: (json['presentEmp'] as num?)?.toInt(),
      absentEmp: (json['absentEmp'] as num?)?.toInt(),
      arrivals: json['arrivals'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$DashboardCountImplToJson(
        _$DashboardCountImpl instance) =>
    <String, dynamic>{
      'totalEmp': instance.totalEmp,
      'presentEmp': instance.presentEmp,
      'absentEmp': instance.absentEmp,
      'arrivals': instance.arrivals,
    };

_$ArrivalCountImpl _$$ArrivalCountImplFromJson(Map<String, dynamic> json) =>
    _$ArrivalCountImpl(
      arvlStatus: json['arvlStatus'] as String?,
      arvlStatusCount: (json['arvlStatusCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ArrivalCountImplToJson(_$ArrivalCountImpl instance) =>
    <String, dynamic>{
      'arvlStatus': instance.arvlStatus,
      'arvlStatusCount': instance.arvlStatusCount,
    };
