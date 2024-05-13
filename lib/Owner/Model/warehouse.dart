import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse.freezed.dart';
part 'warehouse.g.dart';

@freezed
class Warehouse with _$Warehouse {
  const factory Warehouse({
    int? id,
    String? warehouse_name,
    String? warehouse_manager_email_id,
    String? warehouse_manager_name,
    String? manager_phone_number,
    String? country_code,
    int? no_of_chambers,
    int? total_capacity,
    int? no_of_docks,
    int? no_of_gates,
    dynamic slug,
    int? status,
    DateTime? created_at,
    DateTime? update_at,
    dynamic deleted_at,
    int? user_id,
    double? lat,
    double? lng,
    String? warehouses_location,
  }) = _Warehouse;
  factory Warehouse.fromJson(Map<String, Object?> json) =>
      _$WarehouseFromJson(json);
}
