// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dbConnect.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DbConnectAdapter extends TypeAdapter<DbConnect> {
  @override
  final int typeId = 0;

  @override
  DbConnect read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DbConnect(
      host: fields[0] as String?,
      user: fields[1] as String?,
      password: fields[2] as String?,
      database: fields[3] as String?,
      organiosationCode: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DbConnect obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.host)
      ..writeByte(1)
      ..write(obj.user)
      ..writeByte(2)
      ..write(obj.password)
      ..writeByte(3)
      ..write(obj.database)
      ..writeByte(4)
      ..write(obj.organiosationCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DbConnectAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DbConnectImpl _$$DbConnectImplFromJson(Map<String, dynamic> json) =>
    _$DbConnectImpl(
      host: json['host'] as String?,
      user: json['user'] as String?,
      password: json['password'] as String?,
      database: json['database'] as String?,
      organiosationCode: json['organiosationCode'] as String?,
    );

Map<String, dynamic> _$$DbConnectImplToJson(_$DbConnectImpl instance) =>
    <String, dynamic>{
      'host': instance.host,
      'user': instance.user,
      'password': instance.password,
      'database': instance.database,
      'organiosationCode': instance.organiosationCode,
    };
