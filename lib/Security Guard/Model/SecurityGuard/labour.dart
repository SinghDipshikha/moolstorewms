import 'package:freezed_annotation/freezed_annotation.dart';

part 'labour.freezed.dart';
part 'labour.g.dart';

@freezed
class LabourEntry with _$LabourEntry {
  const factory LabourEntry({
    int? id,
    int? added_by,
    String? full_name,
    String? mobile_number,
    String? id_proof,
    int? warehouse_id,
    String? invited_by,
    dynamic status,
    DateTime? created_at,
    dynamic updated_at,
  }) = _GetAllLabourEntryBySecurityGaurd;

  factory LabourEntry.fromJson(Map<String, Object?> json) =>
      _$LabourEntryFromJson(json);
}
