import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person with _$Person {
  const factory Person({
    int? id,
   
    String? person_name,
     String? person_phone,
    String? status,
    DateTime? created_at,
   
  }) = _GetAllPersonsBySecurityGaurd;

  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);
}
 