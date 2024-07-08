// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dockProduct.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DockProductAdapter extends TypeAdapter<DockProduct> {
  @override
  final int typeId = 3;

  @override
  DockProduct read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DockProduct(
      product_id: fields[0] as int?,
      qty: fields[1] as int,
      unitToUpload: fields[2] == null ? 0 : fields[2] as int,
      unit: fields[3] as int,
      expiry_date: fields[4] as DateTime?,
      product_name: fields[5] == null ? '--' : fields[5] as String,
      indent_number: fields[6] as String?,
      id: fields[7] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, DockProduct obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.product_id)
      ..writeByte(1)
      ..write(obj.qty)
      ..writeByte(2)
      ..write(obj.unitToUpload)
      ..writeByte(3)
      ..write(obj.unit)
      ..writeByte(4)
      ..write(obj.expiry_date)
      ..writeByte(5)
      ..write(obj.product_name)
      ..writeByte(6)
      ..write(obj.indent_number)
      ..writeByte(7)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DockProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DockProductImpl _$$DockProductImplFromJson(Map<String, dynamic> json) =>
    _$DockProductImpl(
      product_id: (json['product_id'] as num?)?.toInt() ?? null,
      qty: (json['qty'] as num).toInt(),
      unitToUpload: (json['unitToUpload'] as num?)?.toInt() ?? 0,
      unit: (json['unit'] as num).toInt(),
      expiry_date: json['expiry_date'] == null
          ? null
          : DateTime.parse(json['expiry_date'] as String),
      product_name: json['product_name'] as String? ?? "--",
      indent_number: json['indent_number'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DockProductImplToJson(_$DockProductImpl instance) =>
    <String, dynamic>{
      'product_id': instance.product_id,
      'qty': instance.qty,
      'unitToUpload': instance.unitToUpload,
      'unit': instance.unit,
      'expiry_date': instance.expiry_date?.toIso8601String(),
      'product_name': instance.product_name,
      'indent_number': instance.indent_number,
      'id': instance.id,
    };
