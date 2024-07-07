import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Chamber/dockProduct.dart';

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
    int? id,
    required String pallet,
    required String status,
    required int stacking_level,
    required int is_full,
    @JsonKey(fromJson: _productsFromJson, toJson: _productsToJson)
    List<DockProduct>? products,
  }) = _GridItem;

  factory GridItem.fromJson(Map<String, dynamic> json) =>
      _$GridItemFromJson(json);
}

List<DockProduct>? _productsFromJson(String? json) => json == null
    ? null
    : List<DockProduct>.from(
        (jsonDecode(json) as List).map((item) => DockProduct.fromJson(item)));

String? _productsToJson(List<DockProduct>? products) => products == null
    ? null
    : jsonEncode(products.map((product) => product.toJson()).toList());



  
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