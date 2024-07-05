//palletAssignBody

import 'package:freezed_annotation/freezed_annotation.dart';

part 'palletAssignBody.freezed.dart';
part 'palletAssignBody.g.dart';

/*
  "id":919,
    "pallet_coordinate":"R2C1L1",
    "status":"IN",
    "warehouse_id":1,
    "chamber_id":19,
    "is_full":0,

 */
@freezed
class PalletAssignBody with _$PalletAssignBody {
  const factory PalletAssignBody({
    required int id,
    required String pallet_coordinate,
    required String status,
    required int warehouse_id,
    required int chamber_id,
    @Default(0) int is_full,
    List<Product>? products,
  }) = _PalletAssignBody;

  factory PalletAssignBody.fromJson(Map<String, dynamic> json) =>
      _$PalletAssignBodyFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required int qty,
    required int unit,
    DateTime? expiry_date,
    required String product_name,
    required String indent_number,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

  
    //  {
    //         "dock_id": 11,
    //         "dock_name": "Dock 1",
    //         "id": null,
    //         "vehicle_number": null,
    //         "vehicle_status": null,
    //         "movement": null,
    //         "isShow": null,
    //         "created_at": null,
    //         "updated_at": null
    //     },