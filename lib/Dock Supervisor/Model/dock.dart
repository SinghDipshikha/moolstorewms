import 'package:freezed_annotation/freezed_annotation.dart';

part 'dock.freezed.dart';
part 'dock.g.dart';

@freezed
class Dock with _$Dock {
  const factory Dock({
    int? dock_id,
    String? dock_name,
    int? id,
    String? vehicle_number,
    String? vehicle_status,
    String? movement,
    int? isShow,
    DateTime? created_at,
    DateTime? updated_at,
  }) = _Dock;

  factory Dock.fromJson(Map<String, Object?> json) => _$DockFromJson(json);
}
  
    //  {
    //         "dock_id": 11,
    //         "dock_name": "Dock 1",
    //         "id": null,
    //         "vehicle_number": null,
    //         "vehicle_status": null,
    //         "movement": null,
    //         "isShow": null,
    //         "created_at": null,
    //         "updated_at": null
    //     },