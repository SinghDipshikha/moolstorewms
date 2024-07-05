//unloadingMaterial

import 'package:freezed_annotation/freezed_annotation.dart';

part 'unloadingMaterial.freezed.dart';
part 'unloadingMaterial.g.dart';

@freezed
class UnloadingMaterial with _$UnloadingMaterial {
  const factory UnloadingMaterial({
    String? type,
    String? indent_number,
    int? type_id,
    int? dock_id,
    int? user_id,
    List<MaterialProductDetail>? product_details,
  }) = _UnloadingMaterial;

  factory UnloadingMaterial.fromJson(Map<String, Object?> json) =>
      _$UnloadingMaterialFromJson(json);
}

@freezed
class MaterialProductDetail with _$MaterialProductDetail {
  const factory MaterialProductDetail(
      {required int product_id,
      required String product_name,
      required int qty,
      List? sample_images,
      List? damage_images,
      String? damage_reason,
      required int unit,
      @Default(false) bool isDamaged,
      @Default(false) bool isUnitsDifferent,
      DateTime? expiry_date}) = _MaterialProductDetail;

  factory MaterialProductDetail.fromJson(Map<String, Object?> json) =>
      _$MaterialProductDetailFromJson(json);
}
  

// {
//     "type":"open_visit_tickets",
//     "type_id":46,
//     "dock_id": 1,
//     "product_details": [
//             {
//                 "product_id": 59,
//                 "product_name": "peas",
//                 "qty": 5,
//                 "unit": 10,
//                 "sample_images":[
//                 ],
//                 "damage_images":[      
//                 ]
//             },
//             {
//                 "product_id": 60,
//                 "product_name": "tomato",
//                 "qty": 10,
//                 "unit": 20,
//                 "sample_images":[
//                 ],
//                 "damage_images":[      
//                 ]
//             }
//         ],
//     "user_id":3
    
// }
  /*
  {
        "indent_number": "IND-SG047",
        "warehouse_id": 2,
        "in_out_status": "IN",
        "product_details": [
            {
                "product_id": 59,
                "product_name": "peas",
                "qty": 5,
                "unit": 10
            },
            {
                "product_id": 60,
                "product_name": "tomato ",
                "qty": 10,
                "unit": 20
            }
        ]
    }
  
   */