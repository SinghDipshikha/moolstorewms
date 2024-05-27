import 'package:freezed_annotation/freezed_annotation.dart';

part 'addMaterialCount.freezed.dart';
part 'addMaterialCount.g.dart';

@freezed
class MaterialCount with _$MaterialCount {
  const factory MaterialCount({
   int ?count_in,
    int ?count_out,
  }) = _MaterialCount;

  factory MaterialCount.fromJson(Map<String, Object?> json) =>
      _$MaterialCountFromJson(json);
}
