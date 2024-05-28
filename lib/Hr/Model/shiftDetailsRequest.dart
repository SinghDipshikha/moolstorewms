import 'package:freezed_annotation/freezed_annotation.dart';

part 'shiftDetailsRequest.freezed.dart';
part 'shiftDetailsRequest.g.dart';

@freezed
class ShiftDetailsRequest with _$ShiftDetailsRequest {
  const factory ShiftDetailsRequest({
 
 int? id,
    String ? added_by,
    String ?shift_name,
    DateTime ?shift_check_in,
    DateTime ?shift_check_out,
    String ?warehouse_id,

    
  }) = _ShiftDetailsRequest;

  factory ShiftDetailsRequest.fromJson(Map<String, Object?> json) =>
      _$ShiftDetailsRequestFromJson(json);
}



    