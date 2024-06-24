import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle.freezed.dart';
part 'vehicle.g.dart';

@freezed
class Vehicle with _$Vehicle {
  const factory Vehicle({
    int? id,
    String? vehicle_number,
    String? vehicle_status,
    String? indent_number,
    String? movement,
    int? isShow,
    DateTime? created_at,
    dynamic updated_at,
    dynamic dock_id,
    dynamic dock_name,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, Object?> json) =>
      _$VehicleFromJson(json);
}
