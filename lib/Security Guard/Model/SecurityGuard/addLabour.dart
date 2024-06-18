import 'package:freezed_annotation/freezed_annotation.dart';

part 'addLabour.g.dart';
part 'addLabour.freezed.dart';

@freezed
class AddLabourBySecurityGaurd with _$AddLabourBySecurityGaurd {
  const factory AddLabourBySecurityGaurd({
    int? id,


 int ?added_by,
    String? full_name,
    String? mobile_number,
    String? invited_by,
    String? id_proof,
    dynamic status,
    String ? warehouse_id,
    DateTime? created_at,
    dynamic updated_at,
   
  }) = _AddLabourBySecurityGaurd;

  factory AddLabourBySecurityGaurd.fromJson(Map<String, Object?> json) =>
      _$AddLabourBySecurityGaurdFromJson(json);
}
