import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
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
    DateTime? created_at,
    dynamic updated_at,
  }) = _GetAllTicketListBySecurityGuard;

  factory Ticket.fromJson(Map<String, Object?> json) => _$TicketFromJson(json);
}
