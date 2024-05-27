import 'package:freezed_annotation/freezed_annotation.dart';

part 'addVehicleCount.freezed.dart';
part 'addVehicleCount.g.dart';

@freezed
class VehicleCount with _$VehicleCount {
  const factory VehicleCount({
     int ?count_in,
    int ?count_out,
  
  }) = _VehicleCount;

  factory VehicleCount.fromJson(Map<String, Object?> json) =>
      _$VehicleCountFromJson(json);
}
