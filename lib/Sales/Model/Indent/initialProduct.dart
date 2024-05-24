//initialProducts
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initialProduct.freezed.dart';
part 'initialProduct.g.dart';

@freezed
class InitialProduct with _$InitialProduct {
  const factory InitialProduct({
int? seller_purchase_order_id,
 String? ticket_id,
 String? order_number,
 int? warehouse_id,
 String? warehouse_name,
 int? product_id,
 String? product_name,
 int? ordered_qty,
 int? qty_balance,
  }) = _InitialProduct;

  factory InitialProduct.fromJson(Map<String, Object?> json) =>
      _$InitialProductFromJson(json);
}
/**
 {
            "seller_purchase_order_id": 1,
            "ticket_id": "1716195596277001",
            "order_number": "PO987",
            "warehouse_id": null,
            "warehouse_name": null,
            "product_id": 19,
            "product_name": "safal peas",
            "ordered_qty": 10,
            "qty_balance": -5
        }
 */