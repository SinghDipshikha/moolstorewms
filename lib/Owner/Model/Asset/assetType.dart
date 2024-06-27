//assetType

import 'package:freezed_annotation/freezed_annotation.dart';

part 'assetType.freezed.dart';
part 'assetType.g.dart';

@freezed
class AssetType with _$AssetType {
  const factory AssetType({
    required int id,
    required String name,
    int? status,
  }) = _AssetType;

  factory AssetType.fromJson(Map<String, Object?> json) =>
      _$AssetTypeFromJson(json);
}
