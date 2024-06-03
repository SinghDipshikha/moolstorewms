import 'package:freezed_annotation/freezed_annotation.dart';

part 'addShift.freezed.dart';
part 'addShift.g.dart';

@freezed
class AddShift with _$AddShift {
  const factory AddShift({
 
 int ? id,
    int ?added_by,
    String ?shift_name,
    String ? shift_check_in,
    String ?shift_check_out,
    int? warehouse_id,
    DateTime ?created_at,
    dynamic ?updated_at,

  }) = _AddShift;

  factory AddShift.fromJson(Map<String, Object?> json) =>
      _$AddShiftFromJson(json);
}





    