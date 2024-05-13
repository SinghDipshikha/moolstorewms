import 'package:freezed_annotation/freezed_annotation.dart';

part 'visitor.freezed.dart';
part 'visitor.g.dart';

@freezed
class Visitor with _$Visitor {
  const factory Visitor({
    int? id,
    int? ticket_generate_by,
    int? ticket_verify_by,
    String? visit_ticket_number,
    String? visitor_name,
    String? visitor_ph_number,
    String? purpose_of_visit,
    String? id_proof,
    int? warehouse_id,
    String? in_out_status,
    String? remarks,
    dynamic status,
    DateTime? created_at,
    dynamic updated_at,
  }) = _GetAllVisitorBySecurityGaurd;

  factory Visitor.fromJson(Map<String, Object?> json) =>
      _$VisitorFromJson(json);
}
