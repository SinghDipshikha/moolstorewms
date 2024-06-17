import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moolwmsstore/Sales/Model/Customer/customerListElement.dart';
import 'package:moolwmsstore/Sales/Model/Indent/indentInSubmit.dart';
import 'package:moolwmsstore/Sales/Model/enterProduct.dart';

part 'viewIndentModel.freezed.dart';
part 'viewIndentModel.g.dart';

@freezed
class IndentViewModel with _$IndentViewModel {
  const factory IndentViewModel({
    int? id,
    String? indent_number,
    String? order_number,
    DateTime? created_at,
    int? warehouse_id,
    int? min_temperature,
    int? max_temperature,
    String? warehouse_name,
    String? first_name,
    dynamic last_name,
    String? personType,
    String? name,
    List<String>? designation,
    List<CustomerListElement>? customer_details,
    List<EnterProduct>? product_details,
    List<VehicleDetails>? vehicle_details,
  }) = _IndentViewModel;

  factory IndentViewModel.fromJson(Map<String, Object?> json) =>
      _$IndentViewModelFromJson(json);
}





/*

      {
            "id": 34,
            "indent_id": "IND-SL034",
            "order_number": "cbncjxjx",
            "created_at": "2024-06-16T15:17:02.000Z",
            "warehouse_id": 2,
            "warehouse_name": "Lodeshwar",
            "first_name": "Jaspreet Singh",
            "last_name": null,
            "personType": "owner",
            "name": "Jaspreet Singh",
            "designation": [
                "owner"
            ],
            "customer_details": [
                {
                    "id": 38,
                    "customer_num": "CUS038",
                    "first_name": "DDJDDJ",
                    "last_name": "",
                    "phone": "+915454545464",
                    "email": "null",
                    "company_name": "Shdhdhdh",
                    "gst_number": "22AAAAA0000A1Z",
                    "address": "Dhdhdh",
                    "state": "Zhdjjd"
                }
            ],
            "product_details": [
                {
                    "id": 79,
                    "product_name": "Shdhhd",
                    "sku_id": "xbbd",
                    "hsn_number": "dhdhdh",
                    "mrp": 79,
                    "uom": "vs",
                    "gst_rate": 48,
                    "mfg_date": "2024-06-21T00:00:00.000Z",
                    "expiry_date": "2024-06-14T00:00:00.000Z",
                    "qty": 100,
                    "unit": 40,
                    "total_tax": 7845,
                    "total": 0
                }
            ],
            "vehicle_details": [
                {
                    "vehicle_number": "sbbs",
                    "vehicle_types": "zbdbd",
                    "driver_name": "xbbdnd",
                    "driver_ph_number": "7554545442",
                    "expected_date": "0000-00-00 00:00:00"
                }
            ]
        }


 */