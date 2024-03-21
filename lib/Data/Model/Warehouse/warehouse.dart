import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse.freezed.dart';
part 'warehouse.g.dart';

@freezed
class Warehouse with _$Warehouse {
  const factory Warehouse({
    dynamic id,
    String? warehouseName,
    String? manageEmail,
    String? warehouseManager,
    String? phone,
    String? countryCode,
    int? noOfChambers,
    double? totalCapacity,
    int? noOfDocks,
    int? noOfGates,
    int? status,
    DateTime? createdAt,
    DateTime? updateAt,
    DateTime? deletedAt,
    double? lat,
    double? lng,
    String? warehouseLocation,
  }) = _Warehouse;
  factory Warehouse.fromJson(Map<String, Object?> json) =>
      _$WarehouseFromJson(json);
}
