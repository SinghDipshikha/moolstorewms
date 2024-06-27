import 'package:freezed_annotation/freezed_annotation.dart';

part 'assetElement.freezed.dart';
part 'assetElement.g.dart';

@freezed
class AssetElement with _$AssetElement {
  const factory AssetElement({
    int? id,
    int? user_id,
    int? warehouse_id,
    String? asset_name,
    int? asset_category,
    String? invoice_no,
    String? invoice_photo,
    double? asset_cost,
    int? asset_type,
    String? asset_image,
  }) = _AssetElement;

  factory AssetElement.fromJson(Map<String, Object?> json) =>
      _$AssetElementFromJson(json);
}
/*
        {
            "id": 7,
            "user_id": 1,
            "warehouse_id": 1,
            "asset_name": "camera",
            "asset_category": 1,
            "invoice_no": "INV1234",
            "invoice_photo": "https://indicold-wms-app.s3.ap-south-1.amazonaws.com/images_upload/1718112123863aadhaar-card-7579588_1280.png",
            "asset_cost": 20000,
            "asset_type": 2,
            "asset_image": "https://indicold-wms-app.s3.ap-south-1.amazonaws.com/images_upload/1718112123863aadhaar-card-7579588_1280.png",
            "created_at": "2024-06-16T08:51:19.000Z",
            "updated_at": null
        },

 */