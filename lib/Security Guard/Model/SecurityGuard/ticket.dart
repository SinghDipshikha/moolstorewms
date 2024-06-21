import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
class TicketSG with _$TicketSG {
  const factory TicketSG({
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
  }) = _TicketSG;

  factory TicketSG.fromJson(Map<String, Object?> json) => _$TicketSGFromJson(json);
}

@freezed
class TicketSL with _$TicketSL {
  const factory TicketSL({
    int? id,
    String? indent_number,
    String? order_number,
    DateTime? created_at,
    int? warehouse_id,
    int? min_temperature,
    int? max_temperature,
    String? temperature_unit,
    String? warehouse_name,
    String? first_name,
    dynamic last_name,
    String? personType,
    List<String>? designation,
  }) = _TicketSL;

  factory TicketSL.fromJson(Map<String, Object?> json) => _$TicketSLFromJson(json);
}

@freezed
class Ticket with _$Ticket {
  const factory Ticket.sg(TicketSG ticketSG) = TicketSGWrapper;
  const factory Ticket.sl(TicketSL ticketSL) = TicketSLWrapper;
}
