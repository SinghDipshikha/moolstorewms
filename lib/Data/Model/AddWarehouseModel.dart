import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'AddWarehouseModel.freezed.dart';
part 'AddWarehouseModel.g.dart';

@freezed
class AddWarehouseModel with _$AddWarehouseModel {
  const factory AddWarehouseModel({
    required String warehouseName,
    required String warehouseGst,
    required String warehouseLocation,
  }) = _AddWarehouseModel;

  factory AddWarehouseModel.fromJson(Map<String, Object?> json) =>
      _$AddWarehouseModelFromJson(json);
}
