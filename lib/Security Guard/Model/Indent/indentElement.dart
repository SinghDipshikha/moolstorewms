import 'package:freezed_annotation/freezed_annotation.dart';

part 'indentElement.freezed.dart';
part 'indentElement.g.dart';

@freezed
class IndentElement with _$IndentElement {
  const factory IndentElement({
    String? indent_number,
    String? order_number,
    String? status,
    String? vehicle_types,
    String? vehicle_number,
    String? driver_name,
    String? driver_ph_number,
    DateTime? expected_date,
    DateTime? created_at,
    int? seller_purchase_order_id,
    int? warehouse_id,
    String? warehouse_name,
  }) = _IndentElement;

  factory IndentElement.fromJson(Map<String, Object?> json) =>
      _$IndentElementFromJson(json);
}
      