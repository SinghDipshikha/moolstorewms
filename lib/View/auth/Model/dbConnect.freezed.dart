// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dbConnect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DbConnect _$DbConnectFromJson(Map<String, dynamic> json) {
  return _DbConnect.fromJson(json);
}

/// @nodoc
mixin _$DbConnect {
  @HiveField(0)
  String? get host => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get user => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get password => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get database => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get organiosationCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DbConnectCopyWith<DbConnect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DbConnectCopyWith<$Res> {
  factory $DbConnectCopyWith(DbConnect value, $Res Function(DbConnect) then) =
      _$DbConnectCopyWithImpl<$Res, DbConnect>;
  @useResult
  $Res call(
      {@HiveField(0) String? host,
      @HiveField(1) String? user,
      @HiveField(2) String? password,
      @HiveField(3) String? database,
      @HiveField(4) String? organiosationCode});
}

/// @nodoc
class _$DbConnectCopyWithImpl<$Res, $Val extends DbConnect>
    implements $DbConnectCopyWith<$Res> {
  _$DbConnectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = freezed,
    Object? user = freezed,
    Object? password = freezed,
    Object? database = freezed,
    Object? organiosationCode = freezed,
  }) {
    return _then(_value.copyWith(
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      database: freezed == database
          ? _value.database
          : database // ignore: cast_nullable_to_non_nullable
              as String?,
      organiosationCode: freezed == organiosationCode
          ? _value.organiosationCode
          : organiosationCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DbConnectImplCopyWith<$Res>
    implements $DbConnectCopyWith<$Res> {
  factory _$$DbConnectImplCopyWith(
          _$DbConnectImpl value, $Res Function(_$DbConnectImpl) then) =
      __$$DbConnectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? host,
      @HiveField(1) String? user,
      @HiveField(2) String? password,
      @HiveField(3) String? database,
      @HiveField(4) String? organiosationCode});
}

/// @nodoc
class __$$DbConnectImplCopyWithImpl<$Res>
    extends _$DbConnectCopyWithImpl<$Res, _$DbConnectImpl>
    implements _$$DbConnectImplCopyWith<$Res> {
  __$$DbConnectImplCopyWithImpl(
      _$DbConnectImpl _value, $Res Function(_$DbConnectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = freezed,
    Object? user = freezed,
    Object? password = freezed,
    Object? database = freezed,
    Object? organiosationCode = freezed,
  }) {
    return _then(_$DbConnectImpl(
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      database: freezed == database
          ? _value.database
          : database // ignore: cast_nullable_to_non_nullable
              as String?,
      organiosationCode: freezed == organiosationCode
          ? _value.organiosationCode
          : organiosationCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DbConnectImpl implements _DbConnect {
  const _$DbConnectImpl(
      {@HiveField(0) this.host,
      @HiveField(1) this.user,
      @HiveField(2) this.password,
      @HiveField(3) this.database,
      @HiveField(4) this.organiosationCode});

  factory _$DbConnectImpl.fromJson(Map<String, dynamic> json) =>
      _$$DbConnectImplFromJson(json);

  @override
  @HiveField(0)
  final String? host;
  @override
  @HiveField(1)
  final String? user;
  @override
  @HiveField(2)
  final String? password;
  @override
  @HiveField(3)
  final String? database;
  @override
  @HiveField(4)
  final String? organiosationCode;

  @override
  String toString() {
    return 'DbConnect(host: $host, user: $user, password: $password, database: $database, organiosationCode: $organiosationCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DbConnectImpl &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.database, database) ||
                other.database == database) &&
            (identical(other.organiosationCode, organiosationCode) ||
                other.organiosationCode == organiosationCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, host, user, password, database, organiosationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DbConnectImplCopyWith<_$DbConnectImpl> get copyWith =>
      __$$DbConnectImplCopyWithImpl<_$DbConnectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DbConnectImplToJson(
      this,
    );
  }
}

abstract class _DbConnect implements DbConnect {
  const factory _DbConnect(
      {@HiveField(0) final String? host,
      @HiveField(1) final String? user,
      @HiveField(2) final String? password,
      @HiveField(3) final String? database,
      @HiveField(4) final String? organiosationCode}) = _$DbConnectImpl;

  factory _DbConnect.fromJson(Map<String, dynamic> json) =
      _$DbConnectImpl.fromJson;

  @override
  @HiveField(0)
  String? get host;
  @override
  @HiveField(1)
  String? get user;
  @override
  @HiveField(2)
  String? get password;
  @override
  @HiveField(3)
  String? get database;
  @override
  @HiveField(4)
  String? get organiosationCode;
  @override
  @JsonKey(ignore: true)
  _$$DbConnectImplCopyWith<_$DbConnectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
