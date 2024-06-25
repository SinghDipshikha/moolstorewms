import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@HiveType(typeId: 1)
class User with _$User {
  const factory User({
    @HiveField(0) String? first_name,
    @HiveField(5) int? role_id,
    @HiveField(6) int? id,
    @HiveField(1) String? last_name,
    @HiveField(2) String? email,
    @HiveField(3) dynamic phone,
    @HiveField(4) String? organiosationCode,
    @HiveField(7) List? person_type,
    @HiveField(8) List<WarehousesAcess>? warehouse,
    @HiveField(9) String? avatar,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
@HiveType(typeId: 2)
class WarehousesAcess with _$WarehousesAcess {
  const factory WarehousesAcess({
    @HiveField(0) String? warehouse_name,
    @HiveField(1) int? warehouse_id,
  }) = _WarehousesAcess;

  factory WarehousesAcess.fromJson(Map<String, dynamic> json) =>
      _$WarehousesAcessFromJson(json);
}
