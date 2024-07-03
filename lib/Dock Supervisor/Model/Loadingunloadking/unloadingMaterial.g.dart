// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unloadingMaterial.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnloadingMaterialImpl _$$UnloadingMaterialImplFromJson(
        Map<String, dynamic> json) =>
    _$UnloadingMaterialImpl(
      type: json['type'] as String?,
      type_id: (json['type_id'] as num?)?.toInt(),
      dock_id: (json['dock_id'] as num?)?.toInt(),
      user_id: (json['user_id'] as num?)?.toInt(),
      product_details: (json['product_details'] as List<dynamic>?)
          ?.map(
              (e) => MaterialProductDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UnloadingMaterialImplToJson(
        _$UnloadingMaterialImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'type_id': instance.type_id,
      'dock_id': instance.dock_id,
      'user_id': instance.user_id,
      'product_details':
          instance.product_details?.map((e) => e.toJson()).toList(),
    };

_$MaterialProductDetailImpl _$$MaterialProductDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$MaterialProductDetailImpl(
      product_id: (json['product_id'] as num).toInt(),
      product_name: json['product_name'] as String,
      qty: (json['qty'] as num).toInt(),
      sample_images: json['sample_images'] as List<dynamic>?,
      damage_images: json['damage_images'] as List<dynamic>?,
      damage_reason: json['damage_reason'] as String?,
      unit: (json['unit'] as num).toInt(),
      isDamaged: json['isDamaged'] as bool? ?? false,
      isUnitsDifferent: json['isUnitsDifferent'] as bool? ?? false,
      expiry_date: json['expiry_date'] == null
          ? null
          : DateTime.parse(json['expiry_date'] as String),
    );

Map<String, dynamic> _$$MaterialProductDetailImplToJson(
        _$MaterialProductDetailImpl instance) =>
    <String, dynamic>{
      'product_id': instance.product_id,
      'product_name': instance.product_name,
      'qty': instance.qty,
      'sample_images': instance.sample_images,
      'damage_images': instance.damage_images,
      'damage_reason': instance.damage_reason,
      'unit': instance.unit,
      'isDamaged': instance.isDamaged,
      'isUnitsDifferent': instance.isUnitsDifferent,
      'expiry_date': instance.expiry_date?.toIso8601String(),
    };
