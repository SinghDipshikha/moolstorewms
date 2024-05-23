import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkInSubmit.freezed.dart';
part 'checkInSubmit.g.dart';

@freezed
class CheckInModel with _$CheckInModel {
  const factory CheckInModel({
    int? seller_purchase_order_id,
    List<Map<String, int>>? products,
    VehicleDetails? vehicle_details,
    String? checkin_type,
    int? warehouse_id,
    DateTime? expected_date,
  }) = _CheckInModel;

  factory CheckInModel.fromJson(Map<String, Object?> json) =>
      _$CheckInModelFromJson(json);
}

@freezed
class VehicleDetails with _$VehicleDetails {
  const factory VehicleDetails({
    String? vehicle_type,
    String? vehicle_number,
    String? driver_name,
    String? driver_ph_number,
  }) = _VehicleDetails;

  factory VehicleDetails.fromJson(Map<String, Object?> json) =>
      _$VehicleDetailsFromJson(json);
}
/*
{
"seller_purchase_order_id":1,
"products":[
    {
        "product_id":19,
        "qty":6
    },
   {
        "product_id":20,
        "qty":8
    }
],
"vehicle_details":{
    "vehicle_type":"Truck",
    "vehicle_number": "DL03AS-3000",
    "driver_name":"ajay",
    "driver_ph_number":"+918178393493"
},
"checkin_type":"IN",
"warehouse_id":1,
"expected_date":"2022-03-10 03:00:10"
}
*/