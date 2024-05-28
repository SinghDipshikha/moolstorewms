import 'package:freezed_annotation/freezed_annotation.dart';

part 'addVisitor.g.dart';
part 'addVisitor.freezed.dart';

@freezed
class AddVisitorBySecurityGaurd with _$AddVisitorBySecurityGaurd {
  const factory AddVisitorBySecurityGaurd({
    int? id,
    int? ticket_generate_by,
    String? ticket_verify_by,
    String? visit_ticket_number,
    String? visitor_name,
    String? visitor_ph_number,
    String? purpose_of_visit,
    String? id_proof,
    String? in_out_status,
    String? remarks,
    dynamic status,
    String ? warehouse_id,
    DateTime? created_at,
    dynamic updated_at,
    String ? ticket_validity,
  }) = _AddVisitorBySecurityGaurd;

  factory AddVisitorBySecurityGaurd.fromJson(Map<String, Object?> json) =>
      _$AddVisitorBySecurityGaurdFromJson(json);
}
