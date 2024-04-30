//PersonType
import 'package:freezed_annotation/freezed_annotation.dart';

part 'personType.freezed.dart';
part 'personType.g.dart';

@freezed
class PersonType with _$PersonType {
  const factory PersonType({
    int? id,
    String? person_type,
  }) = _PersonType;

  factory PersonType.fromJson(Map<String, Object?> json) =>
      _$PersonTypeFromJson(json);
}
