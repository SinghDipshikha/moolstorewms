import 'package:freezed_annotation/freezed_annotation.dart';

part 'addVisitor.freezed.dart';
part 'addVisitor.g.dart';

@freezed
class AddVisitorBySecurityGaurd with _$AddVisitorBySecurityGaurd {
  const factory AddVisitorBySecurityGaurd({
    int? ticket_generate_by,
    dynamic ticket_verify_by,
    String? visit_ticket_number,
    String? visitor_name,
    String? visitor_ph_number,
    String? purpose_of_visit,
    String? id_proof,
    int? warehouse_id,
    DateTime? ticket_validity,
    String? in_out_status,
    dynamic remarks,
    DateTime? created_at,
    dynamic updated_at,
  }) = _AddVisitorBySecurityGaurd;

  factory AddVisitorBySecurityGaurd.fromJson(Map<String, Object?> json) =>
      _$AddVisitorBySecurityGaurdFromJson(json);
}
