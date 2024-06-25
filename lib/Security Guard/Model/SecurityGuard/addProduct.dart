






import 'package:freezed_annotation/freezed_annotation.dart';

part 'addProduct.freezed.dart';
part 'addProduct.g.dart';

@freezed
class ProductEntry with _$ProductEntry {
  const factory ProductEntry({
        int? product_id,
        String? product_name,
        int? qty,
        int? unit,
  
  }) = _GetAllProductEntryBySecurityGaurd;

  factory ProductEntry.fromJson(Map<String, Object?> json) =>
      _$ProductEntryFromJson(json);
}

