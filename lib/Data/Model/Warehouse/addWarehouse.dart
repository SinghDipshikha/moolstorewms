import 'package:freezed_annotation/freezed_annotation.dart';

part 'addWarehouse.freezed.dart';
part 'addWarehouse.g.dart';

@freezed
class AddWarehouseField with _$AddWarehouseField {
  const factory AddWarehouseField({
    required int id,
    required String field_name,
    String? type,
    String? error_message_on_empt,
    String? invalid_message,
    dynamic value,
    String? regex,
    List? selected_values,
    int? required,
    int? isShow,
  }) = _AddWarehouseField;

  factory AddWarehouseField.fromJson(Map<String, Object?> json) =>
      _$AddWarehouseFieldFromJson(json);
}

//Useless coz we are getting fields from api
@freezed
class AddWarehouse with _$AddWarehouse {
  const factory AddWarehouse({
    String? warehouse_name,
    int? user_id,
    String? warehouse_locationtion,
    double? lat,
    double? lng,
    String? manage_email,
    String? warehouse_managerger,
    int? phone,
    String? country_code,
    int? no_of_chambers,
    int? total_capacity,
    int? no_of_docks,
    int? no_of_gates,
  }) = _AddWarehouse;

  factory AddWarehouse.fromJson(Map<String, Object?> json) =>
      _$AddWarehouseFromJson(json);
}
