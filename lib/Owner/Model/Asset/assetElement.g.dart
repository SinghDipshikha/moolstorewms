// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assetElement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssetElementImpl _$$AssetElementImplFromJson(Map<String, dynamic> json) =>
    _$AssetElementImpl(
      id: (json['id'] as num?)?.toInt(),
      user_id: (json['user_id'] as num?)?.toInt(),
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      asset_name: json['asset_name'] as String?,
      asset_category: (json['asset_category'] as num?)?.toInt(),
      invoice_no: json['invoice_no'] as String?,
      invoice_photo: json['invoice_photo'] as String?,
      asset_cost: (json['asset_cost'] as num?)?.toDouble(),
      asset_type: (json['asset_type'] as num?)?.toInt(),
      asset_image: json['asset_image'] as String?,
    );

Map<String, dynamic> _$$AssetElementImplToJson(_$AssetElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'warehouse_id': instance.warehouse_id,
      'asset_name': instance.asset_name,
      'asset_category': instance.asset_category,
      'invoice_no': instance.invoice_no,
      'invoice_photo': instance.invoice_photo,
      'asset_cost': instance.asset_cost,
      'asset_type': instance.asset_type,
      'asset_image': instance.asset_image,
    };
