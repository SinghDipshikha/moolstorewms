import 'package:freezed_annotation/freezed_annotation.dart';

part 'addChamber.freezed.dart';
part 'addChamber.g.dart';

@freezed
class ChamberField with _$ChamberField {
  const factory ChamberField({
    required int id,
    required String field_name,
    required String type,
    String? error_message_on_empt,
    String? invalid_message,
    dynamic value,
    String? regex,
    List? selectedValues,
    int? required,
    int? isShow,
  }) = _ChamberField;

  factory ChamberField.fromJson(Map<String, Object?> json) =>
      _$ChamberFieldFromJson(json);
}

//Useless coz we are getting fields from api
@freezed
class AddChamber with _$AddChamber {
  const factory AddChamber({
    int? user_id,
    int? warehouse_id,
    dynamic chamber_number,
    String? temp_type,
    int? temp_min_range,
    int? temp_max_range,
    String? type_of_racking,
    String? refrigeration_type,
    int? chamber_capacity,
    int? movement_height,
    int? pallet_dimension_height,
    int? pallet_dimension_length,
    int? pallet_dimension_breadth,
    int? chamber_height,
    int? chamber_length,
    int? chamber_breadth,
    int? no_of_floors,
    int? contolled_atmosphere,
    int? ozone_filteration,
    int? humidifier,
  }) = _AddChamber;

  factory AddChamber.fromJson(Map<String, Object?> json) =>
      _$AddChamberFromJson(json);
}
/*
{
    "user_id":55,
    "warehouse_id": 8,
    "chamber_number": 5,
    "temp_type": "celsius",
    "temp_min_range": 4,
    "temp_max_range": 9,
    "type_of_racking": "mezzanine racking",
    "refrigeration_type": "ammonia refrigeration",
    "chamber_capacity": 452,
    "movement_height": 254,
    "pallet_dimension_height": 25,
    "pallet_dimension_length": 750,
    "pallet_dimension_breadth": 865,
    "chamber_height": 25,
    "chamber_length": 8550,
    "chamber_breadth": 8175,
    "no_of_floors": 2,
    "contolled_atmosphere": 1,
    "ozone_filteration": 0,
    "humidifier": 1
}




 */