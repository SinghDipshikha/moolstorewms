import 'package:freezed_annotation/freezed_annotation.dart';

part 'dock.freezed.dart';
part 'dock.g.dart';

@freezed
class Dock with _$Dock {
  const factory Dock({
     String ?title,
         int? status,
         int ?warehouseId,
         int? dockId,
  }) = _Dock;

  factory Dock.fromJson(Map<String, Object?> json) =>
      _$DockFromJson(json);
}
  