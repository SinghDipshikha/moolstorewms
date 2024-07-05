// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gridChamber.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GridChamberImpl _$$GridChamberImplFromJson(Map<String, dynamic> json) =>
    _$GridChamberImpl(
      warehouse_id: (json['warehouse_id'] as num).toInt(),
      chamber_id: (json['chamber_id'] as num).toInt(),
      grid: (json['grid'] as List<dynamic>?)
          ?.map((e) => GridItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxRow: (json['maxRow'] as num).toInt(),
      maxColumn: (json['maxColumn'] as num).toInt(),
      minRow: (json['minRow'] as num).toInt(),
      minColumn: (json['minColumn'] as num).toInt(),
      max_stack_level: (json['max_stack_level'] as num).toInt(),
    );

Map<String, dynamic> _$$GridChamberImplToJson(_$GridChamberImpl instance) =>
    <String, dynamic>{
      'warehouse_id': instance.warehouse_id,
      'chamber_id': instance.chamber_id,
      'grid': instance.grid?.map((e) => e.toJson()).toList(),
      'maxRow': instance.maxRow,
      'maxColumn': instance.maxColumn,
      'minRow': instance.minRow,
      'minColumn': instance.minColumn,
      'max_stack_level': instance.max_stack_level,
    };

_$GridItemImpl _$$GridItemImplFromJson(Map<String, dynamic> json) =>
    _$GridItemImpl(
      pallet: json['pallet'] as String,
      status: json['status'] as String,
      stacking_level: (json['stacking_level'] as num).toInt(),
      is_full: (json['is_full'] as num).toInt(),
      products: _productsFromJson(json['products'] as String?),
    );

Map<String, dynamic> _$$GridItemImplToJson(_$GridItemImpl instance) =>
    <String, dynamic>{
      'pallet': instance.pallet,
      'status': instance.status,
      'stacking_level': instance.stacking_level,
      'is_full': instance.is_full,
      'products': _productsToJson(instance.products),
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      product_id: (json['product_id'] as num).toInt(),
      qty: (json['qty'] as num).toInt(),
      unit: (json['unit'] as num).toInt(),
      expiry_date: json['expiry_date'] == null
          ? null
          : DateTime.parse(json['expiry_date'] as String),
      product_name: json['product_name'] as String,
      indent_number: json['indent_number'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'product_id': instance.product_id,
      'qty': instance.qty,
      'unit': instance.unit,
      'expiry_date': instance.expiry_date?.toIso8601String(),
      'product_name': instance.product_name,
      'indent_number': instance.indent_number,
    };
