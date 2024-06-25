// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboardCount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardCountImpl _$$DashboardCountImplFromJson(Map<String, dynamic> json) =>
    _$DashboardCountImpl(
      totalEmployeesData: json['totalEmployeesData'] == null
          ? null
          : TotalCount.fromJson(
              json['totalEmployeesData'] as Map<String, dynamic>),
      arrivals: (json['arrivals'] as List<dynamic>?)
          ?.map((e) => ArrivalCount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DashboardCountImplToJson(
        _$DashboardCountImpl instance) =>
    <String, dynamic>{
      'totalEmployeesData': instance.totalEmployeesData?.toJson(),
      'arrivals': instance.arrivals?.map((e) => e.toJson()).toList(),
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

_$TotalCountImpl _$$TotalCountImplFromJson(Map<String, dynamic> json) =>
    _$TotalCountImpl(
      totalEmp: (json['totalEmp'] as num?)?.toInt(),
      presentEmp: (json['presentEmp'] as num?)?.toInt(),
      absentEmp: (json['absentEmp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TotalCountImplToJson(_$TotalCountImpl instance) =>
    <String, dynamic>{
      'totalEmp': instance.totalEmp,
      'presentEmp': instance.presentEmp,
      'absentEmp': instance.absentEmp,
    };
