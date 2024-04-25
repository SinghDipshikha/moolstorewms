import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'dbConnect.freezed.dart';
part 'dbConnect.g.dart';

@freezed
@HiveType(typeId: 0)
class DbConnect with _$DbConnect {
  const factory DbConnect({
    @HiveField(0) String? host,
    @HiveField(1) String? user,
    @HiveField(2) String? password,
    @HiveField(3) String? database,
    @HiveField(4) String? organiosationCode,
  }) = _DbConnect;

  factory DbConnect.fromJson(Map<String, dynamic> json) =>
      _$DbConnectFromJson(json);
}
