import 'package:freezed_annotation/freezed_annotation.dart';

part 'indent_chamber.freezed.dart';
part 'indent_chamber.g.dart';

@freezed
class IndentChamber with _$IndentChamber {
  const factory IndentChamber({
    required int warehouse_id,
    required int chamber_id,
    String? status,
    int? stacking_level,
    int? is_full,
    required int maxRow,
    required int maxColumn,
    required int minRow,
    required int minColumn,
    int? max_stack_level,
    List<Pallet>? pallets,
  }) = _IndentChamber;

  factory IndentChamber.fromJson(Map<String, dynamic> json) =>
      _$IndentChamberFromJson(json);
}

@freezed
class Pallet with _$Pallet {
  const factory Pallet({
    required String pallet,
    List<IndentNumber>? indentNumbers,
  }) = _Pallet;

  factory Pallet.fromJson(Map<String, dynamic> json) => _$PalletFromJson(json);
}

@freezed
class IndentNumber with _$IndentNumber {
  const factory IndentNumber({
    required String indent_number,
    required List<IndentProduct> products,
  }) = _IndentNumber;

  factory IndentNumber.fromJson(Map<String, dynamic> json) =>
      _$IndentNumberFromJson(json);
}

@freezed
class IndentProduct with _$IndentProduct {
  const factory IndentProduct({
    required int id,
    required int qty,
    required int unit,
    String? expiry_date,
    required String product_name,
    required String indent_number,
  }) = _IndentProduct;

  factory IndentProduct.fromJson(Map<String, dynamic> json) =>
      _$IndentProductFromJson(json);
}

/*

                "warehouse_id": 1,
                "chamber_id": 0,
                "status": "X",
                "stacking_level": 1,
                "is_full": 0,
                "maxRow": 8,
                "maxColumn": 8,
                "minRow": 1,
                "minColumn": 1,
                "max_stack_level": 0,
                "pallets": [
                    {
                        "pallet": "R2C1L1",
                        "indentNumbers": [
                            {
                                "indent_number": "df23",
                                "products": [
                                    {
                                        "id": 6,
                                        "qty": 4,
                                        "unit": 10,
                                        "expiry_date": "29-may-2019",
                                        "product_name": "milk",
                                        "indent_number": "df23"
                                    },
                                    {
                                        "id": 6,
                                        "qty": 4,
                                        "unit": 10,
                                        "expiry_date": "29-may-2019",
                                        "product_name": "milk",
                                        "indent_number": "df23"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "pallet": "R2C1L2",
                        "indentNumbers": [
                            {
                                "indent_number": "df23",
                                "products": [
                                    {
                                        "id": 6,
                                        "qty": 4,
                                        "unit": 10,
                                        "expiry_date": "29-may-2019",
                                        "product_name": "milk",
                                        "indent_number": "df23"
                                    },
                                    {
                                        "id": 6,
                                        "qty": 4,
                                        "unit": 10,
                                        "expiry_date": "29-may-2019",
                                        "product_name": "milk",
                                        "indent_number": "df23"
                                    }
                                ]
                            }
                        ]
                    }
                ]
            }

 */