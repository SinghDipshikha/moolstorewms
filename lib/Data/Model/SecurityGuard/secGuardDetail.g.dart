// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secGuardDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SecGuardDetailImpl _$$SecGuardDetailImplFromJson(Map<String, dynamic> json) =>
    _$SecGuardDetailImpl(
      id: json['id'] as int?,
      employee_id: json['employee_id'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      email: json['email'],
      phone: json['phone'] as int?,
      password: json['password'],
      slug: json['slug'],
      verification_code: json['verification_code'],
      gender: json['gender'],
      avatar: json['avatar'],
      status: json['status'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'],
      deleted_at: json['deleted_at'],
      language_id: json['language_id'],
      role_id: json['role_id'] as int?,
      designation_id: json['designation_id'] as int?,
      warehouse_id: json['warehouse_id'] as int?,
      designation: json['designation'] as String?,
    );

Map<String, dynamic> _$$SecGuardDetailImplToJson(
        _$SecGuardDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_id': instance.employee_id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'slug': instance.slug,
      'verification_code': instance.verification_code,
      'gender': instance.gender,
      'avatar': instance.avatar,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'language_id': instance.language_id,
      'role_id': instance.role_id,
      'designation_id': instance.designation_id,
      'warehouse_id': instance.warehouse_id,
      'designation': instance.designation,
    };
