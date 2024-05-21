import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff.freezed.dart';
part 'staff.g.dart';

@freezed
class StaffEntry with _$StaffEntry {
  const factory StaffEntry({
  String ? name,
    String ?mobile,
    String ?employeeId,
    dynamic warehouseId,
    DateTime ? timestamp,
    List<String>? personType,
    int ?isBankDetails,
    int ?isCareerDetails,
    int?isEducationDetails,
    int ?isUserDetails,
    int ?isDocumentDetails,
  }) = _StaffEntry;

  factory StaffEntry.fromJson(Map<String, Object?> json) =>
      _$StaffEntryFromJson(json);
}




   