//assetCatoegories

import 'package:freezed_annotation/freezed_annotation.dart';

part 'assetCatoegories.freezed.dart';
part 'assetCatoegories.g.dart';

@freezed
class AssetCatoegory with _$AssetCatoegory {
  const factory AssetCatoegory({
    required int id,
    required String name,
    String? slug,
    int? status,
  }) = _AssetCatoegory;

  factory AssetCatoegory.fromJson(Map<String, Object?> json) =>
      _$AssetCatoegoryFromJson(json);
}
