import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'dockProduct.freezed.dart';
part 'dockProduct.g.dart';

@freezed
@HiveType(typeId: 3)
class DockProduct with _$DockProduct {
  const factory DockProduct({
    @HiveField(0, defaultValue: null) @Default(null) int? product_id,
    @HiveField(1) required int qty,
    @HiveField(2, defaultValue: 0) @Default(0) int unitToUpload,
    @HiveField(3) required int unit,
    @HiveField(4, defaultValue: null) DateTime? expiry_date,
    @HiveField(5, defaultValue: "--") @Default("--") String product_name,
    @HiveField(6, defaultValue: null) String? indent_number,
    @HiveField(7, defaultValue: null) int? id,
  }) = _DockProduct;

  factory DockProduct.fromJson(Map<String, dynamic> json) =>
      _$DockProductFromJson(json);
}
