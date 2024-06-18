import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
class Ticket with _$Ticket {
  const factory Ticket({
    String? indent_number,
    int? ticket_generate_by,
    String? employee_id,
    String? visitor_name,
    String? visitor_ph_number,
    String? does_have_vehicle,
    String? vehicle_number,
    String? vehicle_types,
    String? material_inside,
    String? products,
    String? status,
    int? warehouse_id,
    DateTime? created_at,
  }) = _GetAllTicketListBySecurityGuard;

  factory Ticket.fromJson(Map<String, Object?> json) => _$TicketFromJson(json);
}
