import 'package:freezed_annotation/freezed_annotation.dart';

part 'indentDetails.freezed.dart';
part 'indentDetails.g.dart';

@freezed
class IndentDetails with _$IndentDetails {
  const factory IndentDetails({
    String? indent_number,
    int? warehouse_id,
    String? in_out_status,
    List<ProductDetail>? product_details,
  }) = _IndentDetails;

  factory IndentDetails.fromJson(Map<String, Object?> json) =>
      _$IndentDetailsFromJson(json);
}

@freezed
class ProductDetail with _$ProductDetail {
  const factory ProductDetail({
    required int product_id,
    required String product_name,
    required int qty,
    required int unit,
    DateTime? expiry_date
  }) = _ProductDetail;

  factory ProductDetail.fromJson(Map<String, Object?> json) =>
      _$ProductDetailFromJson(json);
}
  

  /*
  {
        "indent_number": "IND-SG047",
        "warehouse_id": 2,
        "in_out_status": "IN",
        "product_details": [
            {
                "product_id": 59,
                "product_name": "peas",
                "qty": 5,
                "unit": 10
            },
            {
                "product_id": 60,
                "product_name": "tomato ",
                "qty": 10,
                "unit": 20
            }
        ]
    }
  
   */