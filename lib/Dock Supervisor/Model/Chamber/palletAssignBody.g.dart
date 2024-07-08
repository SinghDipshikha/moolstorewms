// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'palletAssignBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PalletAssignBodyImpl _$$PalletAssignBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$PalletAssignBodyImpl(
      id: (json['id'] as num?)?.toInt(),
      pallet_coordinate: json['pallet_coordinate'] as String?,
      status: json['status'] as String? ?? "IN",
      warehouse_id: (json['warehouse_id'] as num).toInt(),
      chamber_id: (json['chamber_id'] as num).toInt(),
      is_full: (json['is_full'] as num?)?.toInt() ?? 0,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => DockProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PalletAssignBodyImplToJson(
        _$PalletAssignBodyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pallet_coordinate': instance.pallet_coordinate,
      'status': instance.status,
      'warehouse_id': instance.warehouse_id,
      'chamber_id': instance.chamber_id,
      'is_full': instance.is_full,
      'products': instance.products?.map((e) => e.toJson()).toList(),
    };
