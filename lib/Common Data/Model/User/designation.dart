import 'package:freezed_annotation/freezed_annotation.dart';

part 'designation.freezed.dart';
part 'designation.g.dart';

@freezed
class Designation with _$Designation {
  const factory Designation({
    required int id,
    required String name,
    // DateTime? created_at,
    // dynamic updated_at,
  }) = _Designation;

  factory Designation.fromJson(Map<String, Object?> json) =>
      _$DesignationFromJson(json);
}
