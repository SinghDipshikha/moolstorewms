//SecGuardDetail
import 'package:freezed_annotation/freezed_annotation.dart';

part 'secGuardDetail.freezed.dart';
part 'secGuardDetail.g.dart';

@freezed
class SecGuardDetail with _$SecGuardDetail {
  const factory SecGuardDetail({
    int? id,
    String? employee_id,
    String? first_name,
    String? last_name,
    dynamic email,
    int? phone,
    dynamic password,
    dynamic slug,
    dynamic verification_code,
    dynamic gender,
    dynamic avatar,
    int? status,
    DateTime? created_at,
    dynamic updated_at,
    dynamic deleted_at,
    dynamic language_id,
    int? role_id,
    int? designation_id,
    int? warehouse_id,
    String? designation,
  }) = _SecGuardDetail;

  factory SecGuardDetail.fromJson(Map<String, Object?> json) =>
      _$SecGuardDetailFromJson(json);
}
/**
 
        "id": 4,
        "employee_id": "SM003a6d",
        "first_name": "akshay",
        "last_name": "jain",
        "email": null,
        "phone": 8138393493,
        "password": null,
        "slug": null,
        "verification_code": null,
        "gender": null,
        "avatar": null,
        "status": 0,
        "created_at": "2024-03-29T19:37:37.000Z",
        "updated_at": null,
        "deleted_at": null,
        "language_id": null,
        "role_id": 2,
        "designation_id": 8,
        "warehouse_id": 1,
        "designation": "Staff Manager"
 */
