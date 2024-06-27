// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assetCatoegories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssetCatoegoryImpl _$$AssetCatoegoryImplFromJson(Map<String, dynamic> json) =>
    _$AssetCatoegoryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AssetCatoegoryImplToJson(
        _$AssetCatoegoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'status': instance.status,
    };
