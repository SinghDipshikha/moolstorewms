/**
 {
    // "id":1,
    "visitor_generate_by":"2",
    "visitor_name": "Abhishek",
    "visitor_ph_number": "+916111962532",
    "warehouse_id": 43,
    "id_proof": "https://indicold-wms-app.s3.ap-south-1.amazonaws.com/images_upload/1713696189270aadhaar-card-7579588_1280.png",
    "purpose_of_visit": "Inquiry",
    "in_out_status":"IN"
}
 */
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'addVisitorModel.freezed.dart';
part 'addVisitorModel.g.dart';

@freezed
class AddVisitorModel with _$AddVisitorModel {
  const factory AddVisitorModel({
    dynamic visitor_generate_by,
    String? visitor_name,
    String? visitor_ph_number,
    int? warehouse_id,
    String? id_proof,
    String? purpose_of_visit,
    String? in_out_status,
    DateTime? validTill,
  }) = _AddVisitorModel;

  factory AddVisitorModel.fromJson(Map<String, Object?> json) =>
      _$AddVisitorModelFromJson(json);
}
