import 'package:freezed_annotation/freezed_annotation.dart';

part 'indentElement.freezed.dart';
part 'indentElement.g.dart';

@freezed
class IndentElement with _$IndentElement {
  const factory IndentElement({
    int? id,
    int? customer_id,
    String? customer_name,
    String? indent_number,
    String? order_number,
    String? vehicle_number,
    String? driver_name,
    String? driver_ph_number,
    DateTime? dateTime,
  }) = _IndentElement;

  factory IndentElement.fromJson(Map<String, Object?> json) =>
      _$IndentElementFromJson(json);
}


/*
  {
            "id": 32,
            "ticket_id": "IND-SL032",
            "order_number": "PO92313",
            "warehouse_id": 1,
            "vehicle_number": "DL03AS-3546",
            "vehicle_types": "Truck",
            "driver_name": "vinay",
            "driver_ph_number": "+918178393493",
            "customer_id": 25,
            "customer_name": "Akshay jain",
            "company_name": null,
            "dateTime": "2024-06-16T10:39:30.000Z",
            "status": ""
        },


*/