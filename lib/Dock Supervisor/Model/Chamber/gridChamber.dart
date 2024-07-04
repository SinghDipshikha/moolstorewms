import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'gridChamber.freezed.dart';
part 'gridChamber.g.dart';

@freezed
class GridChamber with _$GridChamber {
  const factory GridChamber({
    required int warehouse_id,
    required int chamber_id,
    required List<GridItem>? grid,
    required int maxRow,
    required int maxColumn,
    required int minRow,
    required int minColumn,
    required int max_stack_level,
  }) = _GridChamber;

  factory GridChamber.fromJson(Map<String, dynamic> json) =>
      _$GridChamberFromJson(json);
}

@freezed
class GridItem with _$GridItem {
  const factory GridItem({
    required String pallet,
    required String status,
    required int stacking_level,
    required int is_full,
    @JsonKey(fromJson: _productsFromJson, toJson: _productsToJson)
    List<Product>? products,
  }) = _GridItem;

  factory GridItem.fromJson(Map<String, dynamic> json) =>
      _$GridItemFromJson(json);
}

List<Product>? _productsFromJson(String? json) => json == null
    ? null
    : List<Product>.from(
        (jsonDecode(json) as List).map((item) => Product.fromJson(item)));

String? _productsToJson(List<Product>? products) => products == null
    ? null
    : jsonEncode(products.map((product) => product.toJson()).toList());

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