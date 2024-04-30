import 'package:freezed_annotation/freezed_annotation.dart';

part 'PurchaseOrder.freezed.dart';
part 'PurchaseOrder.g.dart';

@freezed
class PurchaseOrder with _$PurchaseOrder {
  const factory PurchaseOrder({
    int? id,
    String? order_number,
    int? call_from_seller_companany_details,
    int? ship_from_seller_companany_details,
    int? bill_to_seller_companany_details,
    int? ship_to_seller_companany_details,
    String? vehicle_types,
    String? vehicle_number,
    String? person_identity,
    String? indentity_type,
    String? name,
    String? persons,
    String? description,
    int? total_tax,
    int? total,
    DateTime? expiry_date,
    String? account_number,
    String? vendor_id,
    DateTime? created_at,
    dynamic updated_at,
    dynamic deleted_at,
  }) = _PurchaseOrder;

  factory PurchaseOrder.fromJson(Map<String, Object?> json) =>
      _$PurchaseOrderFromJson(json);
}
