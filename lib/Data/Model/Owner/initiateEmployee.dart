//initiateEmployee
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initiateEmployee.freezed.dart';
part 'initiateEmployee.g.dart';

@freezed
class InitiateEmployee with _$InitiateEmployee {
  const factory InitiateEmployee({
    int? id,
    String? order_number,
    int? call_from_seller_companany_details,
    int? ship_from_seller_companany_details,
    int? bill_to_seller_companany_details,
    int? ship_to_seller_companany_details,
  }) = _InitiateEmployee;

  factory InitiateEmployee.fromJson(Map<String, Object?> json) =>
      _$InitiateEmployeeFromJson(json);
}
