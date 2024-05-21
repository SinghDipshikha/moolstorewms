import 'package:freezed_annotation/freezed_annotation.dart';

part 'enterProduct.freezed.dart';
part 'enterProduct.g.dart';

@freezed
class EnterProduct with _$EnterProduct {
  const factory EnterProduct({
    String? product_no,
    String? product_name,
    String? hsn_number,
    double? mrp,
    int? margin,
    String? description,
    int? unit,
    int? gst_rate,
    int? qty,
    String? uom,
    DateTime? expiry_date,
    int? total_tax,
    int? total,
  }) = _EnterProduct;

  factory EnterProduct.fromJson(Map<String, Object?> json) =>
      _$EnterProductFromJson(json);
}


/*
{
            "product_no":"def",
            "product_name":"butter milk",
            "hsn_number":"589000",
            "mrp":87,
            "margin":13,
            "description":"amul butter",
            "unit": 10,
            "gst_rate":3,
            "qty":3,
            "uom":"abc",
            "expiry_date": "2022-03-05 00:00:00",
            "total_tax":134,
            "total":1220
        },


 */

