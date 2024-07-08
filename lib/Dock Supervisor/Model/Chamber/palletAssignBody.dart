//palletAssignBody

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moolwmsstore/Dock%20Supervisor/Model/Chamber/dockProduct.dart';

part 'palletAssignBody.freezed.dart';
part 'palletAssignBody.g.dart';

@freezed
class PalletAssignBody with _$PalletAssignBody {
  const factory PalletAssignBody({
    int? id,
    String? pallet_coordinate,
    @Default("IN") String status,
    required int warehouse_id,
    required int chamber_id,
    @Default(0) int is_full,
    List<DockProduct>? products,
  }) = _PalletAssignBody;

  factory PalletAssignBody.fromJson(Map<String, dynamic> json) =>
      _$PalletAssignBodyFromJson(json);
}
