import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance.freezed.dart';
part 'attendance.g.dart';

@freezed
class AttendanceEntry with _$AttendanceEntry {
  const factory AttendanceEntry({
    String? employeeID,
        String? name,
        String? designation,
        DateTime? shift_check_in,
        String? status,
        DateTime? created_at,
        int? warehouse_id,
  }) = _AttendanceEntry;

  factory AttendanceEntry.fromJson(Map<String, Object?> json) =>
      _$AttendanceEntryFromJson(json);
}
