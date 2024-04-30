import 'package:freezed_annotation/freezed_annotation.dart';

part 'employeeEntry.freezed.dart';
part 'employeeEntry.g.dart';

@freezed
class EmployeeEntry with _$EmployeeEntry {
  const factory EmployeeEntry({
    dynamic employeeId,
    dynamic name,
    dynamic mobile,
    String? status,
    dynamic date,
    dynamic time,
    String? gate,
  }) = _EmployeeEntry;

  factory EmployeeEntry.fromJson(Map<String, Object?> json) =>
      _$EmployeeEntryFromJson(json);
}
