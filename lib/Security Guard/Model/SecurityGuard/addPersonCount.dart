import 'package:freezed_annotation/freezed_annotation.dart';

part 'addPersonCount.freezed.dart';
part 'addPersonCount.g.dart';

@freezed
class PersonCount with _$PersonCount {
  const factory PersonCount({
    
   int ?count_in,
    int ?count_out,
  }) = _PersonCount;

  factory PersonCount.fromJson(Map<String, Object?> json) =>
      _$PersonCountFromJson(json);
}
