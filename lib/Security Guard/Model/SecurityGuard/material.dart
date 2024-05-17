import 'package:freezed_annotation/freezed_annotation.dart';

part 'material.freezed.dart';
part 'material.g.dart';

@freezed
class MaterialEntry with _$MaterialEntry {
  const factory MaterialEntry({
    int? id,
    String? vehicle_number,
    String? driver_name,
    String? product_name,
    int? qty,
    int? unit,
    DateTime? expiry_date,
    dynamic status,
    DateTime? created_at,
    dynamic material_from,
  }) = _GetAllMaterialEntryBySecurityGaurd;

  factory MaterialEntry.fromJson(Map<String, Object?> json) =>
      _$MaterialEntryFromJson(json);
}
