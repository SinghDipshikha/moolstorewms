import 'package:freezed_annotation/freezed_annotation.dart';

part 'enterProduct.freezed.dart';
part 'enterProduct.g.dart';

@freezed

class EnterProduct with _$EnterProduct {
  const factory EnterProduct({
    String? sku_id,
    String? product_name,
    String? hsn_number,
    DateTime? mfg_date,
    DateTime? expiry_date,
    double? mrp,
    int? margin,
    String? description,
    int? unit,
    int? gst_rate,
    int? qty,
    String? uom,
    int? total_tax,
    int? total,
  }) = _EnterProduct;

  factory EnterProduct.fromJson(Map<String, Object?> json) =>
      _$EnterProductFromJson(json);
}


/*
        {
            "sku_id":"105AB",
            "product_name":"safal peas",
            "hsn_number":"589000",
            "mfg_date":"2022-03-05 00:00:00",
            "expiry_date":"2022-03-05 00:00:00",
            "mrp":100,
            "margin":13,
            "description":"amul butter",
            "qty":30,
            "unit": 10,
            "uom":"kg",
            "gst_rate":5,
            "total_tax":15,
            "total":315
        },

 */

