// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboardCount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DashboardCount _$DashboardCountFromJson(Map<String, dynamic> json) {
  return _DashboardCount.fromJson(json);
}

/// @nodoc
mixin _$DashboardCount {
//
  TotalCount? get totalEmployeesData => throw _privateConstructorUsedError;
  List<ArrivalCount>? get arrivals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardCountCopyWith<DashboardCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardCountCopyWith<$Res> {
  factory $DashboardCountCopyWith(
          DashboardCount value, $Res Function(DashboardCount) then) =
      _$DashboardCountCopyWithImpl<$Res, DashboardCount>;
  @useResult
  $Res call({TotalCount? totalEmployeesData, List<ArrivalCount>? arrivals});

  $TotalCountCopyWith<$Res>? get totalEmployeesData;
}

/// @nodoc
class _$DashboardCountCopyWithImpl<$Res, $Val extends DashboardCount>
    implements $DashboardCountCopyWith<$Res> {
  _$DashboardCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEmployeesData = freezed,
    Object? arrivals = freezed,
  }) {
    return _then(_value.copyWith(
      totalEmployeesData: freezed == totalEmployeesData
          ? _value.totalEmployeesData
          : totalEmployeesData // ignore: cast_nullable_to_non_nullable
              as TotalCount?,
      arrivals: freezed == arrivals
          ? _value.arrivals
          : arrivals // ignore: cast_nullable_to_non_nullable
              as List<ArrivalCount>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalCountCopyWith<$Res>? get totalEmployeesData {
    if (_value.totalEmployeesData == null) {
      return null;
    }

    return $TotalCountCopyWith<$Res>(_value.totalEmployeesData!, (value) {
      return _then(_value.copyWith(totalEmployeesData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardCountImplCopyWith<$Res>
    implements $DashboardCountCopyWith<$Res> {
  factory _$$DashboardCountImplCopyWith(_$DashboardCountImpl value,
          $Res Function(_$DashboardCountImpl) then) =
      __$$DashboardCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TotalCount? totalEmployeesData, List<ArrivalCount>? arrivals});

  @override
  $TotalCountCopyWith<$Res>? get totalEmployeesData;
}

/// @nodoc
class __$$DashboardCountImplCopyWithImpl<$Res>
    extends _$DashboardCountCopyWithImpl<$Res, _$DashboardCountImpl>
    implements _$$DashboardCountImplCopyWith<$Res> {
  __$$DashboardCountImplCopyWithImpl(
      _$DashboardCountImpl _value, $Res Function(_$DashboardCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEmployeesData = freezed,
    Object? arrivals = freezed,
  }) {
    return _then(_$DashboardCountImpl(
      totalEmployeesData: freezed == totalEmployeesData
          ? _value.totalEmployeesData
          : totalEmployeesData // ignore: cast_nullable_to_non_nullable
              as TotalCount?,
      arrivals: freezed == arrivals
          ? _value._arrivals
          : arrivals // ignore: cast_nullable_to_non_nullable
              as List<ArrivalCount>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardCountImpl implements _DashboardCount {
  const _$DashboardCountImpl(
      {this.totalEmployeesData, final List<ArrivalCount>? arrivals})
      : _arrivals = arrivals;

  factory _$DashboardCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardCountImplFromJson(json);

//
  @override
  final TotalCount? totalEmployeesData;
  final List<ArrivalCount>? _arrivals;
  @override
  List<ArrivalCount>? get arrivals {
    final value = _arrivals;
    if (value == null) return null;
    if (_arrivals is EqualUnmodifiableListView) return _arrivals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DashboardCount(totalEmployeesData: $totalEmployeesData, arrivals: $arrivals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardCountImpl &&
            (identical(other.totalEmployeesData, totalEmployeesData) ||
                other.totalEmployeesData == totalEmployeesData) &&
            const DeepCollectionEquality().equals(other._arrivals, _arrivals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalEmployeesData,
      const DeepCollectionEquality().hash(_arrivals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardCountImplCopyWith<_$DashboardCountImpl> get copyWith =>
      __$$DashboardCountImplCopyWithImpl<_$DashboardCountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardCountImplToJson(
      this,
    );
  }
}

abstract class _DashboardCount implements DashboardCount {
  const factory _DashboardCount(
      {final TotalCount? totalEmployeesData,
      final List<ArrivalCount>? arrivals}) = _$DashboardCountImpl;

  factory _DashboardCount.fromJson(Map<String, dynamic> json) =
      _$DashboardCountImpl.fromJson;

  @override //
  TotalCount? get totalEmployeesData;
  @override
  List<ArrivalCount>? get arrivals;
  @override
  @JsonKey(ignore: true)
  _$$DashboardCountImplCopyWith<_$DashboardCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArrivalCount _$ArrivalCountFromJson(Map<String, dynamic> json) {
  return _ArrivalCount.fromJson(json);
}

/// @nodoc
mixin _$ArrivalCount {
  String? get arvlStatus => throw _privateConstructorUsedError;
  int? get arvlStatusCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArrivalCountCopyWith<ArrivalCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArrivalCountCopyWith<$Res> {
  factory $ArrivalCountCopyWith(
          ArrivalCount value, $Res Function(ArrivalCount) then) =
      _$ArrivalCountCopyWithImpl<$Res, ArrivalCount>;
  @useResult
  $Res call({String? arvlStatus, int? arvlStatusCount});
}

/// @nodoc
class _$ArrivalCountCopyWithImpl<$Res, $Val extends ArrivalCount>
    implements $ArrivalCountCopyWith<$Res> {
  _$ArrivalCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arvlStatus = freezed,
    Object? arvlStatusCount = freezed,
  }) {
    return _then(_value.copyWith(
      arvlStatus: freezed == arvlStatus
          ? _value.arvlStatus
          : arvlStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      arvlStatusCount: freezed == arvlStatusCount
          ? _value.arvlStatusCount
          : arvlStatusCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArrivalCountImplCopyWith<$Res>
    implements $ArrivalCountCopyWith<$Res> {
  factory _$$ArrivalCountImplCopyWith(
          _$ArrivalCountImpl value, $Res Function(_$ArrivalCountImpl) then) =
      __$$ArrivalCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? arvlStatus, int? arvlStatusCount});
}

/// @nodoc
class __$$ArrivalCountImplCopyWithImpl<$Res>
    extends _$ArrivalCountCopyWithImpl<$Res, _$ArrivalCountImpl>
    implements _$$ArrivalCountImplCopyWith<$Res> {
  __$$ArrivalCountImplCopyWithImpl(
      _$ArrivalCountImpl _value, $Res Function(_$ArrivalCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arvlStatus = freezed,
    Object? arvlStatusCount = freezed,
  }) {
    return _then(_$ArrivalCountImpl(
      arvlStatus: freezed == arvlStatus
          ? _value.arvlStatus
          : arvlStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      arvlStatusCount: freezed == arvlStatusCount
          ? _value.arvlStatusCount
          : arvlStatusCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArrivalCountImpl implements _ArrivalCount {
  const _$ArrivalCountImpl({this.arvlStatus, this.arvlStatusCount});

  factory _$ArrivalCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArrivalCountImplFromJson(json);

  @override
  final String? arvlStatus;
  @override
  final int? arvlStatusCount;

  @override
  String toString() {
    return 'ArrivalCount(arvlStatus: $arvlStatus, arvlStatusCount: $arvlStatusCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArrivalCountImpl &&
            (identical(other.arvlStatus, arvlStatus) ||
                other.arvlStatus == arvlStatus) &&
            (identical(other.arvlStatusCount, arvlStatusCount) ||
                other.arvlStatusCount == arvlStatusCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, arvlStatus, arvlStatusCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArrivalCountImplCopyWith<_$ArrivalCountImpl> get copyWith =>
      __$$ArrivalCountImplCopyWithImpl<_$ArrivalCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArrivalCountImplToJson(
      this,
    );
  }
}

abstract class _ArrivalCount implements ArrivalCount {
  const factory _ArrivalCount(
      {final String? arvlStatus,
      final int? arvlStatusCount}) = _$ArrivalCountImpl;

  factory _ArrivalCount.fromJson(Map<String, dynamic> json) =
      _$ArrivalCountImpl.fromJson;

  @override
  String? get arvlStatus;
  @override
  int? get arvlStatusCount;
  @override
  @JsonKey(ignore: true)
  _$$ArrivalCountImplCopyWith<_$ArrivalCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TotalCount _$TotalCountFromJson(Map<String, dynamic> json) {
  return _TotalCount.fromJson(json);
}

/// @nodoc
mixin _$TotalCount {
  int? get totalEmp => throw _privateConstructorUsedError;
  int? get presentEmp => throw _privateConstructorUsedError;
  int? get absentEmp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalCountCopyWith<TotalCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalCountCopyWith<$Res> {
  factory $TotalCountCopyWith(
          TotalCount value, $Res Function(TotalCount) then) =
      _$TotalCountCopyWithImpl<$Res, TotalCount>;
  @useResult
  $Res call({int? totalEmp, int? presentEmp, int? absentEmp});
}

/// @nodoc
class _$TotalCountCopyWithImpl<$Res, $Val extends TotalCount>
    implements $TotalCountCopyWith<$Res> {
  _$TotalCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEmp = freezed,
    Object? presentEmp = freezed,
    Object? absentEmp = freezed,
  }) {
    return _then(_value.copyWith(
      totalEmp: freezed == totalEmp
          ? _value.totalEmp
          : totalEmp // ignore: cast_nullable_to_non_nullable
              as int?,
      presentEmp: freezed == presentEmp
          ? _value.presentEmp
          : presentEmp // ignore: cast_nullable_to_non_nullable
              as int?,
      absentEmp: freezed == absentEmp
          ? _value.absentEmp
          : absentEmp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalCountImplCopyWith<$Res>
    implements $TotalCountCopyWith<$Res> {
  factory _$$TotalCountImplCopyWith(
          _$TotalCountImpl value, $Res Function(_$TotalCountImpl) then) =
      __$$TotalCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? totalEmp, int? presentEmp, int? absentEmp});
}

/// @nodoc
class __$$TotalCountImplCopyWithImpl<$Res>
    extends _$TotalCountCopyWithImpl<$Res, _$TotalCountImpl>
    implements _$$TotalCountImplCopyWith<$Res> {
  __$$TotalCountImplCopyWithImpl(
      _$TotalCountImpl _value, $Res Function(_$TotalCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalEmp = freezed,
    Object? presentEmp = freezed,
    Object? absentEmp = freezed,
  }) {
    return _then(_$TotalCountImpl(
      totalEmp: freezed == totalEmp
          ? _value.totalEmp
          : totalEmp // ignore: cast_nullable_to_non_nullable
              as int?,
      presentEmp: freezed == presentEmp
          ? _value.presentEmp
          : presentEmp // ignore: cast_nullable_to_non_nullable
              as int?,
      absentEmp: freezed == absentEmp
          ? _value.absentEmp
          : absentEmp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalCountImpl implements _TotalCount {
  const _$TotalCountImpl({this.totalEmp, this.presentEmp, this.absentEmp});

  factory _$TotalCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalCountImplFromJson(json);

  @override
  final int? totalEmp;
  @override
  final int? presentEmp;
  @override
  final int? absentEmp;

  @override
  String toString() {
    return 'TotalCount(totalEmp: $totalEmp, presentEmp: $presentEmp, absentEmp: $absentEmp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalCountImpl &&
            (identical(other.totalEmp, totalEmp) ||
                other.totalEmp == totalEmp) &&
            (identical(other.presentEmp, presentEmp) ||
                other.presentEmp == presentEmp) &&
            (identical(other.absentEmp, absentEmp) ||
                other.absentEmp == absentEmp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalEmp, presentEmp, absentEmp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalCountImplCopyWith<_$TotalCountImpl> get copyWith =>
      __$$TotalCountImplCopyWithImpl<_$TotalCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalCountImplToJson(
      this,
    );
  }
}

abstract class _TotalCount implements TotalCount {
  const factory _TotalCount(
      {final int? totalEmp,
      final int? presentEmp,
      final int? absentEmp}) = _$TotalCountImpl;

  factory _TotalCount.fromJson(Map<String, dynamic> json) =
      _$TotalCountImpl.fromJson;

  @override
  int? get totalEmp;
  @override
  int? get presentEmp;
  @override
  int? get absentEmp;
  @override
  @JsonKey(ignore: true)
  _$$TotalCountImplCopyWith<_$TotalCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}