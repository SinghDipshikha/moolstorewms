import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboardCount.freezed.dart';
part 'dashboardCount.g.dart';

@freezed
class DashboardCount with _$DashboardCount {
  const factory DashboardCount({
    int? totalEmp,
    int? presentEmp,
    int? absentEmp,
    Map<String, Object?>? arrivals,
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
