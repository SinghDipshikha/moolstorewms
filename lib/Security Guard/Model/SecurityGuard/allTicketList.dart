import 'package:freezed_annotation/freezed_annotation.dart';

part 'allTicketList.freezed.dart';
part 'allTicketList.g.dart';

@freezed
class GetAllTicketListBySecurityGuard with _$GetAllTicketListBySecurityGuard {
  const factory GetAllTicketListBySecurityGuard({
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

  factory GetAllTicketListBySecurityGuard.fromJson(Map<String, Object?> json) =>
      _$GetAllTicketListBySecurityGuardFromJson(json);
}
