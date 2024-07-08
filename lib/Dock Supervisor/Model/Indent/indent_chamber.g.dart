// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indent_chamber.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndentChamberImpl _$$IndentChamberImplFromJson(Map<String, dynamic> json) =>
    _$IndentChamberImpl(
      warehouse_id: (json['warehouse_id'] as num).toInt(),
      chamber_id: (json['chamber_id'] as num).toInt(),
      status: json['status'] as String?,
      stacking_level: (json['stacking_level'] as num?)?.toInt(),
      is_full: (json['is_full'] as num?)?.toInt(),
      maxRow: (json['maxRow'] as num).toInt(),
      maxColumn: (json['maxColumn'] as num).toInt(),
      minRow: (json['minRow'] as num).toInt(),
      minColumn: (json['minColumn'] as num).toInt(),
      max_stack_level: (json['max_stack_level'] as num?)?.toInt(),
      pallets: (json['pallets'] as List<dynamic>?)
          ?.map((e) => Pallet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IndentChamberImplToJson(_$IndentChamberImpl instance) =>
    <String, dynamic>{
      'warehouse_id': instance.warehouse_id,
      'chamber_id': instance.chamber_id,
      'status': instance.status,
      'stacking_level': instance.stacking_level,
      'is_full': instance.is_full,
      'maxRow': instance.maxRow,
      'maxColumn': instance.maxColumn,
      'minRow': instance.minRow,
      'minColumn': instance.minColumn,
      'max_stack_level': instance.max_stack_level,
      'pallets': instance.pallets?.map((e) => e.toJson()).toList(),
    };

_$PalletImpl _$$PalletImplFromJson(Map<String, dynamic> json) => _$PalletImpl(
      pallet: json['pallet'] as String,
      indentNumbers: (json['indentNumbers'] as List<dynamic>?)
          ?.map((e) => IndentNumber.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PalletImplToJson(_$PalletImpl instance) =>
    <String, dynamic>{
      'pallet': instance.pallet,
      'indentNumbers': instance.indentNumbers?.map((e) => e.toJson()).toList(),
    };

_$IndentNumberImpl _$$IndentNumberImplFromJson(Map<String, dynamic> json) =>
    _$IndentNumberImpl(
      indent_number: json['indent_number'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => IndentProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IndentNumberImplToJson(_$IndentNumberImpl instance) =>
    <String, dynamic>{
      'indent_number': instance.indent_number,
      'products': instance.products.map((e) => e.toJson()).toList(),
    };

_$IndentProductImpl _$$IndentProductImplFromJson(Map<String, dynamic> json) =>
    _$IndentProductImpl(
      id: (json['id'] as num).toInt(),
      qty: (json['qty'] as num).toInt(),
      unit: (json['unit'] as num).toInt(),
      expiry_date: json['expiry_date'] as String?,
      product_name: json['product_name'] as String,
      indent_number: json['indent_number'] as String,
    );

Map<String, dynamic> _$$IndentProductImplToJson(_$IndentProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qty': instance.qty,
      'unit': instance.unit,
      'expiry_date': instance.expiry_date,
      'product_name': instance.product_name,
      'indent_number': instance.indent_number,
    };
