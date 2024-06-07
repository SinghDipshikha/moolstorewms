//uploadDocument

import 'package:freezed_annotation/freezed_annotation.dart';

part 'uploadDocument.freezed.dart';
part 'uploadDocument.g.dart';

@freezed
class UploadDocument with _$UploadDocument {
  const factory UploadDocument({
    int? user_id,
    String? file_path,
    String? file_type,
    List<Map<String, String?>>? label_name,
    int? updated_by,
  }) = _UploadDocument;

  factory UploadDocument.fromJson(Map<String, Object?> json) =>
      _$UploadDocumentFromJson(json);
}
