import 'package:freezed_annotation/freezed_annotation.dart';

part 'addWarehouseField.freezed.dart';
part 'addWarehouseField.g.dart';

@freezed
class AddWarehiuseField with _$AddWarehiuseField {
  const factory AddWarehiuseField({
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
  }) = _AddWarehiuseField;

  factory AddWarehiuseField.fromJson(Map<String, Object?> json) =>
      _$AddWarehiuseFieldFromJson(json);
}
