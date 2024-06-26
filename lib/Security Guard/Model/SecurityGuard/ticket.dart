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
    List<ProductElement>? product_details,
    VehicleElement? vehicle_details,
  }) = _TicketSG;

  factory TicketSG.fromJson(Map<String, Object?> json) =>
      _$TicketSGFromJson(json);
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
    String? warehouse_name,
    String? first_name,
    dynamic last_name,
    String? personType,
    String? name,
    List<String>? designation,
    List<ProductElement>? product_details,
    VehicleElement? vehicle_details,
  }) = _TicketSL;

  factory TicketSL.fromJson(Map<String, Object?> json) =>
      _$TicketSLFromJson(json);
}

@freezed
class Ticket with _$Ticket {
  const factory Ticket.sg(TicketSG ticketSG) = TicketSGWrapper;
  const factory Ticket.sl(TicketSL ticketSL) = TicketSLWrapper;
}

@freezed
class VehicleElement with _$VehicleElement {
  const factory VehicleElement({
    String? vehicle_number,
    String? vehicle_types,
    String? driver_name,
    String? driver_ph_number,
    DateTime? expected_date,
  }) = _GetAllVehicleElementBySecurityGaurd;

  factory VehicleElement.fromJson(Map<String, Object?> json) =>
      _$VehicleElementFromJson(json);
}

@freezed
class ProductElement with _$ProductElement {
  const factory ProductElement({
    int? product_id,
    String? product_name,
    int? qty,
    int? unit,
  }) = _GetAllProductElementBySecurityGaurd;

  factory ProductElement.fromJson(Map<String, Object?> json) =>
      _$ProductElementFromJson(json);
}
