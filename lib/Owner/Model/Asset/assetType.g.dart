// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assetType.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssetTypeImpl _$$AssetTypeImplFromJson(Map<String, dynamic> json) =>
    _$AssetTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AssetTypeImplToJson(_$AssetTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
    };
