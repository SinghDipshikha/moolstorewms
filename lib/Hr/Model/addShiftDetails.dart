import 'package:freezed_annotation/freezed_annotation.dart';

part 'addShiftDetails.freezed.dart';
part 'addShiftDetails.g.dart';

@freezed
class AddShiftDetails with _$AddShiftDetails {
  const factory AddShiftDetails({
    int ?id,
    int ?added_by,
    String? shift_name,
    String? shift_check_in,
    String? shift_check_out,
    int? warehouse_id,
    DateTime? created_at,
    DateTime? updated_at,
  }) = _AddShiftDetails;

  factory AddShiftDetails.fromJson(Map<String, Object?> json) =>
      _$AddShiftDetailsFromJson(json);
}


 

