import 'package:freezed_annotation/freezed_annotation.dart';

part 'chamber.freezed.dart';
part 'chamber.g.dart';

@freezed
class Chamber with _$Chamber {
  const factory Chamber({
    required int id,
 
  
  }) = _Chamber;

  factory Chamber.fromJson(Map<String, Object?> json) =>
      _$ChamberFromJson(json);
}