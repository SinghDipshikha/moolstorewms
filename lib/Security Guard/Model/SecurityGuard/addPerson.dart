import 'package:freezed_annotation/freezed_annotation.dart';

part 'addPerson.freezed.dart';
part 'addPerson.g.dart';

@freezed
class AddPersonBySecurityGaurd with _$AddPersonBySecurityGaurd {
  const factory AddPersonBySecurityGaurd({
    int? id,
    int? ticket_generate_by,
    String? open_visit_ticket_number,
    String? visitor_name,
    String? visitor_ph_number,
    String? does_have_vehicle,
    String? vehicle_number,
    String? in_out_status,
    String? material_inside,
    String? products_data,
    dynamic status,
    DateTime? created_at,
    dynamic updated_at,
  }) = _AddPersonBySecurityGaurd;

  factory AddPersonBySecurityGaurd.fromJson(Map<String, Object?> json) =>
      _$AddPersonBySecurityGaurdFromJson(json);
}
