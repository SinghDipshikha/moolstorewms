import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboardCount.freezed.dart';
part 'dashboardCount.g.dart';

@freezed
class DashboardCount with _$DashboardCount {
  const factory DashboardCount({
    //
    TotalCount? totalEmployeesData,
    List<ArrivalCount>? arrivals,
  }) = _DashboardCount;

  factory DashboardCount.fromJson(Map<String, Object?> json) =>
      _$DashboardCountFromJson(json);
}

@freezed
class ArrivalCount with _$ArrivalCount {
  const factory ArrivalCount({
    String? arvlStatus,
    int? arvlStatusCount,
  }) = _ArrivalCount;

  factory ArrivalCount.fromJson(Map<String, Object?> json) =>
      _$ArrivalCountFromJson(json);
}

@freezed
class TotalCount with _$TotalCount {
  const factory TotalCount({
    int? totalEmp,
    int? presentEmp,
    int? absentEmp,
  }) = _TotalCount;

  factory TotalCount.fromJson(Map<String, Object?> json) =>
      _$TotalCountFromJson(json);
}
