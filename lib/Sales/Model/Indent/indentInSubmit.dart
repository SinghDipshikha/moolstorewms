import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moolwmsstore/Sales/Model/enterProduct.dart';

part 'indentInSubmit.freezed.dart';
part 'indentInSubmit.g.dart';

@freezed
// @JsonSerializable(explicitToJson: true)
class IndentInModel with _$IndentInModel {
  const factory IndentInModel({
    required int user_id,
    int? customer_id,
    List<EnterProduct>? products,
    VehicleDetails? vehicle_details,
    String? order_number,
    int? warehouse_id,
    int? min_temperature,
    int? max_temperature,
    DateTime? expected_date,
    required String temperature_unit,
    required String status,
  }) = _IndentInModel;

  factory IndentInModel.fromJson(Map<String, Object?> json) =>
      _$IndentInModelFromJson(json);
}

@freezed
class VehicleDetails with _$VehicleDetails {
  const factory VehicleDetails({
    String? vehicle_type,
    String? vehicle_number,
    String? driver_name,
    String? driver_ph_number,
    DateTime? expected_date,
  }) = _VehicleDetails;

  factory VehicleDetails.fromJson(Map<String, Object?> json) =>
      _$VehicleDetailsFromJson(json);
}
/*
{
{
    "user_id": 1,
    "customer_id":25,
    "products": [
        {
            "sku_id":"105AB",
            "product_name":"safal peas",
            "hsn_number":"589000",
            "mfg_date":"2022-03-05 00:00:00",
            "expiry_date":"2022-03-05 00:00:00",
            "mrp":100,
            "margin":13,
            "description":"amul butter",
            "qty":30,
            "unit": 10,
            "uom":"kg",
            "gst_rate":5,
            "total_tax":15,
            "total":315
        },
        {
            "sku_id":"10AD",
            "product_name":" icecream",
            "hsn_number":"312000",
            "mfg_date":"2022-03-05 00:00:00",
            "expiry_date":"2022-03-05 00:00:00",
            "mrp":50,
            "margin":12,
            "description":" frozen pea",
            "qty":30,
            "unit": 15,
            "uom":"kg",
            "gst_rate":10,
            "total_tax":15,
            "total":165
        }
    ],
    "vehicle_details":{
    "vehicle_type":"Truck",
    "vehicle_number": "DL03AS-3546",
    "driver_name":"vinay",
    "driver_ph_number":"+918178393493"
},
    "order_number":"PO92313",
    "min_temperature": -5,
    "max_temperature": 8,
    "temperature_unit":"celcius",
    "warehouse_id":1,
    "status":"IN"
}
*/