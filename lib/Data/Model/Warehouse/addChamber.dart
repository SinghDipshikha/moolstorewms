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
    List? selected_values,
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
    int? userId,
    int? warehouseId,
    int? chamberNumber,
    String? tempType,
    int? tempMinRange,
    int? tempMaxRange,
    String? typeOfRacking,
    String? refrigerationType,
    int? chamberCapacity,
    int? movementHeight,
    int? palletDimensionHeight,
    int? palletDimensionLength,
    int? palletDimensionBreadth,
    int? chamberHeight,
    int? chamberLength,
    int? chamberBreadth,
    int? noOfFloors,
    int? contolledAtmosphere,
    int? ozoneFilteration,
    int? humidifier,
  }) = _AddChamber;

  factory AddChamber.fromJson(Map<String, Object?> json) =>
      _$AddChamberFromJson(json);
}
