import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle.freezed.dart';
part 'vehicle.g.dart';

@freezed
class Vehicle with _$Vehicle {
  const factory Vehicle({
    int? id,
    required int type_id,
    required int verified_by_dock_manager,
    String? vehicle_number,
    String? vehicle_status,
    String? indent_number,
    String? movement,
    String? type,
    int? isShow,
    DateTime? created_at,
    dynamic updated_at,
    dynamic dock_id,
    dynamic dock_name,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, Object?> json) =>
      _$VehicleFromJson(json);
}

//             "type_id": 8,