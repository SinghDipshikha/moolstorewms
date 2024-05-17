






import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle.freezed.dart';
part 'vehicle.g.dart';

@freezed
class VehicleEntry with _$VehicleEntry {
  const factory VehicleEntry({
    int? id,
    
    String? driver_name,
    String ? owner_name,
    String? driver_phone,
    String? vehicle_number,
    String ?vehicle_types,
    String? product_name,
    int? qty,

  
    dynamic status,
    DateTime? created_at,
  
  }) = _GetAllVehicleEntryBySecurityGaurd;

  factory VehicleEntry.fromJson(Map<String, Object?> json) =>
      _$VehicleEntryFromJson(json);
}

  