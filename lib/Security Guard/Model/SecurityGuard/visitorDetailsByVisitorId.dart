import 'package:freezed_annotation/freezed_annotation.dart';

part 'visitorDetailsByVisitorId.freezed.dart';
part 'visitorDetailsByVisitorId.g.dart';

@freezed
class GetVisitorDetailsByVisitor with _$GetVisitorDetailsByVisitor {
  const factory GetVisitorDetailsByVisitor({
    int? id,
    int? ticket_generate_by,
    dynamic ticket_verify_by,
    String? visit_ticket_number,
    String? visitor_name,
    String? visitor_ph_number,
    String? purpose_of_visit,
    String? id_proof,
    String? in_out_status,
    dynamic remarks,
    DateTime? created_at,
    dynamic updated_at,
  }) = _GetVisitorDetailsByVisitor;

  factory GetVisitorDetailsByVisitor.fromJson(Map<String, Object?> json) =>
      _$GetVisitorDetailsByVisitorFromJson(json);
}
