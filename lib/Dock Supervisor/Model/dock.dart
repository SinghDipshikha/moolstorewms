import 'package:freezed_annotation/freezed_annotation.dart';

part 'dock.freezed.dart';
part 'dock.g.dart';

@freezed
class Dock with _$Dock {
  const factory Dock({
      int? dockId,
         String? dockName,
         int? id,
         String ?vehicleNumber,
         String? vehicleStatus,
         String ?movement,
         int ?isShow,
         DateTime ?createdAt,
         DateTime? updatedAt,
  }) = _Dock;

  factory Dock.fromJson(Map<String, Object?> json) =>
      _$DockFromJson(json);
}
  