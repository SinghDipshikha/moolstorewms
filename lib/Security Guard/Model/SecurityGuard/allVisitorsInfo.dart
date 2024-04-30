import 'package:freezed_annotation/freezed_annotation.dart';

part 'allVisitorsInfo.freezed.dart';
part 'allVisitorsInfo.g.dart';

@freezed
class GetAllVisitorBySecurityGaurd with _$GetAllVisitorBySecurityGaurd {
  const factory GetAllVisitorBySecurityGaurd({
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
  }) = _GetAllVisitorBySecurityGaurd;

  factory GetAllVisitorBySecurityGaurd.fromJson(Map<String, Object?> json) =>
      _$GetAllVisitorBySecurityGaurdFromJson(json);
}
