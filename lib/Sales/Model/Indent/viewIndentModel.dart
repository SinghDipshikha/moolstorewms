import 'package:freezed_annotation/freezed_annotation.dart';

part 'viewIndentModel.freezed.dart';
part 'viewIndentModel.g.dart';

@freezed
class IndentViewModel with _$IndentViewModel {
  const factory IndentViewModel({
    String? ticket_id,
    DateTime? created_at,
    String? first_name,
    dynamic last_name,
    String? call_from_seller_company,
    String? name,
    String? ship_from_seller_companany,
    String? ship_to_seller_companany,
    String? bill_to_seller_companany,
    List<ProductsIndentViewModel>? product_details,
    List<ChecksIndentViewModel>? check_ins,
    List<ChecksIndentViewModel>? check_outs,
  }) = _IndentViewModel;

  factory IndentViewModel.fromJson(Map<String, Object?> json) =>
      _$IndentViewModelFromJson(json);
}

@freezed
class ChecksIndentViewModel with _$ChecksIndentViewModel {
  const factory ChecksIndentViewModel({
    String? vehicle_types,
    String? vehicle_number,
    String? driver_name,
    String? checkin_type,
    DateTime? expected_date,
    String? seller_product_value,
    String? product_name,
    String? warehouse_name,
  }) = _ChecksIndentViewModel;

  factory ChecksIndentViewModel.fromJson(Map<String, Object?> json) =>
      _$ChecksIndentViewModelFromJson(json);
}

@freezed
class ProductsIndentViewModel with _$ProductsIndentViewModel {
  const factory ProductsIndentViewModel({
    int? qty,
    int? mrp,
    int? total,
    int? unit,
    String? product_no,
    String? product_name,
    String? hsn_number,
  }) = _ProductsIndentViewModel;

  factory ProductsIndentViewModel.fromJson(Map<String, Object?> json) =>
      _$ProductsIndentViewModelFromJson(json);
}



/*

{
            "ticket_id": "1716292316543000",
            "created_at": "2024-05-21T17:21:56.000Z",
            "first_name": "Jaspreet Singh",
            "last_name": null,
            "call_from_seller_company": "Indicold Sbsh",
            "name": "Jaspreet Singh ",
            "ship_from_seller_companany": "Zepto",
            "ship_to_seller_companany": "Zomato",
            "bill_to_seller_companany": "Maggie ",
            "product_details": [
                {
                    "qty": 3,
                    "mrp": 100,
                    "total": 315,
                    "unit": 10,
                    "product_no": "105AB",
                    "product_name": "safal peas",
                    "hsn_number": "589000"
                },
                {
                    "qty": 3,
                    "mrp": 50,
                    "total": 165,
                    "unit": 15,
                    "product_no": "106CD",
                    "product_name": " icecream",
                    "hsn_number": "312000"
                }
            ],
            "check_ins": [
                {
                    "vehicle_types": "cold",
                    "vehicle_number": "DL03AS-3000",
                    "driver_name": "ravi",
                    "checkin_type": "IN",
                    "expected_date": "2022-03-10T03:00:10.000Z",
                    "seller_product_value": "3",
                    "product_name": "safal peas",
                    "warehouse_name": "Agro Kailash"
                },
                {
                    "vehicle_types": "cold",
                    "vehicle_number": "DL03AS-3000",
                    "driver_name": "ravi",
                    "checkin_type": "IN",
                    "expected_date": "2022-03-10T03:00:10.000Z",
                    "seller_product_value": "2",
                    "product_name": " icecream",
                    "warehouse_name": "Agro Kailash"
                },
                {
                    "vehicle_types": "Truck",
                    "vehicle_number": "DL03AS-3000",
                    "driver_name": "ajay",
                    "checkin_type": "IN",
                    "expected_date": "2022-03-10T03:00:10.000Z",
                    "seller_product_value": "6",
                    "product_name": "safal peas",
                    "warehouse_name": "Agro Kailash"
                },
                {
                    "vehicle_types": "Truck",
                    "vehicle_number": "DL03AS-3000",
                    "driver_name": "ajay",
                    "checkin_type": "IN",
                    "expected_date": "2022-03-10T03:00:10.000Z",
                    "seller_product_value": "8",
                    "product_name": " icecream",
                    "warehouse_name": "Agro Kailash"
                },
                {
                    "vehicle_types": "Truck",
                    "vehicle_number": "DL03AS-3000",
                    "driver_name": "ajay",
                    "checkin_type": "IN",
                    "expected_date": "2022-03-10T03:00:10.000Z",
                    "seller_product_value": "6",
                    "product_name": "safal peas",
                    "warehouse_name": "Agro Kailash"
                },
                {
                    "vehicle_types": "Truck",
                    "vehicle_number": "DL03AS-3000",
                    "driver_name": "ajay",
                    "checkin_type": "IN",
                    "expected_date": "2022-03-10T03:00:10.000Z",
                    "seller_product_value": "8",
                    "product_name": " icecream",
                    "warehouse_name": "Agro Kailash"
                }
            ],
            "check_outs": []
        
}


 */