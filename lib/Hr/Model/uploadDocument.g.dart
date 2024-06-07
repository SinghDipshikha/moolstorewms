// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uploadDocument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadDocumentImpl _$$UploadDocumentImplFromJson(Map<String, dynamic> json) =>
    _$UploadDocumentImpl(
      user_id: (json['user_id'] as num?)?.toInt(),
      file_path: json['file_path'] as String?,
      file_type: json['file_type'] as String?,
      label_name: (json['label_name'] as List<dynamic>?)
          ?.map((e) => Map<String, String?>.from(e as Map))
          .toList(),
      updated_by: (json['updated_by'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UploadDocumentImplToJson(
        _$UploadDocumentImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'file_path': instance.file_path,
      'file_type': instance.file_type,
      'label_name': instance.label_name,
      'updated_by': instance.updated_by,
    };
