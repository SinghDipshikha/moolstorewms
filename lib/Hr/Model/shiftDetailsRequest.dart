import 'package:freezed_annotation/freezed_annotation.dart';

part 'shiftDetailsRequest.freezed.dart';
part 'shiftDetailsRequest.g.dart';

@freezed
class ShiftDetailsRequest with _$ShiftDetailsRequest {
  const factory ShiftDetailsRequest({
    int? added_by,
    String? shift_name,
    String? shift_check_in,
    String? shift_check_out,
    int? warehouse_id,
  }) = _ShiftDetailsRequest;

  factory ShiftDetailsRequest.fromJson(Map<String, Object?> json) =>
      _$ShiftDetailsRequestFromJson(json);
}
