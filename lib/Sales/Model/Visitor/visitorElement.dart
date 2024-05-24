//visitorElement\

import 'package:freezed_annotation/freezed_annotation.dart';

part 'visitorElement.freezed.dart';
part 'visitorElement.g.dart';

@freezed
class VisitorElement with _$VisitorElement {
  const factory VisitorElement({
    int? id,
    int? ticket_generate_by,
    dynamic ticket_verify_by,
    String? visit_ticket_number,
    String? visitor_name,
    String? visitor_ph_number,
    String? purpose_of_visit,
    String? id_proof,
    int? warehouse_id,
    String? in_out_status,
    dynamic remarks,
    DateTime? created_at,
    dynamic updated_at,
        DateTime? validTill,
  }) = _VisitorElement;

  factory VisitorElement.fromJson(Map<String, Object?> json) =>
      _$VisitorElementFromJson(json);
}


/*
 {
            "id": 6,
            "ticket_generate_by": 2,
            "ticket_verify_by": null,
            "visit_ticket_number": "VS006",
            "visitor_name": "Abhishek",
            "visitor_ph_number": "+918911966526",
            "purpose_of_visit": "Inquiry",
            "id_proof": "https://indicold-wms-app.s3.ap-south-1.amazonaws.com/images_upload/1713696189270aadhaar-card-7579588_1280.png",
            "warehouse_id": 1,
            "in_out_status": "IN",
            "remarks": null,
            "created_at": "2024-05-11T11:34:03.000Z",
            "updated_at": null
        }
*/