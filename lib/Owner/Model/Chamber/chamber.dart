import 'package:freezed_annotation/freezed_annotation.dart';

part 'chamber.freezed.dart';
part 'chamber.g.dart';

@freezed
class Chamber with _$Chamber {
  const factory Chamber({
    int? id,
    int? warehouse_id,
    int? chamber_number,
    dynamic chamber_area,
    int? floor_number,
    dynamic height_of_each_floor,
    int? temp_min_range,
    int? temp_max_range,
    String? temp_type,
    String? type_of_racking,
    dynamic capacity_meter,
    dynamic capacity_pallet,
    dynamic pallet_dimension,
    dynamic floor_area,
    dynamic staircase,
    dynamic total_ante_chamber_area,
    dynamic ante_chamber_temp_range,
    dynamic total_no_of_docks,
    dynamic total_office_space,
    dynamic available_area_for_expansion,
    dynamic processing_area_if_any,
    dynamic total_parking_space_available,
    dynamic type_of_docks,
    DateTime? created_at,
    dynamic updated_at,
    dynamic deleted_at,
    int? chamber_capacity,
    String? refrigeration_type,
    int? pallet_dimension_height,
    int? pallet_dimension_breadth,
    int? pallet_dimension_length,
    int? movement_height,
    int? controlled_atmosphere,
    int? humidifier,
    int? ozone_filteration,
    int? chamber_length,
    int? chamber_breadth,
    int? chamber_height,
    int? user_id,
    String? stacking_level,
    int? pallate_count,
    String? warehouse_name,
  }) = _Chamber;

  factory Chamber.fromJson(Map<String, Object?> json) =>
      _$ChamberFromJson(json);
}


/*
 {
                 "id": 14,
                 "warehouse_id": 1,
                 "chamber_number": 2,
                 "chamber_area": null,
                 "floor_number": 1,
                 "height_of_each_floor": null,
                 "temp_min_range": 1,
                 "temp_max_range": 15,
                 "temp_type": "null",
                 "type_of_racking": "mezzanine_racking",
                 "capacity_meter": null,
                 "capacity_pallet": null,
                 "pallet_dimension": null,
                 "floor_area": null,
                 "staircase": null,
                 "total_ante_chamber_area": null,
                 "ante_chamber_temp_range": null,
                 "total_no_of_docks": null,
                 "total_office_space": null,
                 "available_area_for_expansion": null,
                 "processing_area_if_any": null,
                 "total_parking_space_available": null,
                 "type_of_docks": null,
                 "created_at": "2024-05-15T06:13:51.000Z",
                 "updated_at": null,
                 "deleted_at": null,
                 "chamber_capacity": 0,
                 "refrigeration_type": "CO2_refrigeration",
                 "pallet_dimension_height": 0,
                 "pallet_dimension_breadth": 0,
                 "pallet_dimension_length": 0,
                 "movement_height": 0,
                 "controlled_atmosphere": 0,
                 "humidifier": 1,
                 "ozone_filteration": 0,
                 "chamber_length": 0,
                 "chamber_breadth": 0,
                 "chamber_height": 0,
                 "user_id": 1,
                 "stacking_level": "3",
                 "pallate_count": 1500,
                 "warehouse_name": "Agro Kailash"
            }



 */