// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 1;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      first_name: fields[0] as String?,
      role_id: fields[5] as int?,
      id: fields[6] as int?,
      last_name: fields[1] as String?,
      email: fields[2] as String?,
      phone: fields[3] as dynamic,
      organiosationCode: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.first_name)
      ..writeByte(5)
      ..write(obj.role_id)
      ..writeByte(6)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.last_name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.organiosationCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      first_name: json['first_name'] as String?,
      role_id: json['role_id'] as int?,
      id: json['id'] as int?,
      last_name: json['last_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'],
      organiosationCode: json['organiosationCode'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'role_id': instance.role_id,
      'id': instance.id,
      'last_name': instance.last_name,
      'email': instance.email,
      'phone': instance.phone,
      'organiosationCode': instance.organiosationCode,
    };
