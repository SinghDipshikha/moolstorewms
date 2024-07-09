// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allDetailModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllDetail _$AllDetailFromJson(Map<String, dynamic> json) {
  return _AllDetail.fromJson(json);
}

/// @nodoc
mixin _$AllDetail {
  AddBankDetails? get bankDetails => throw _privateConstructorUsedError;
  List<AddCareerDetail>? get careerDetail => throw _privateConstructorUsedError;
  AddEducationDetail? get educationDetail => throw _privateConstructorUsedError;
  AddReferralDetail? get referralDetail => throw _privateConstructorUsedError;
  PersonalDetailsResponse? get personalDetailsResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllDetailCopyWith<AllDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllDetailCopyWith<$Res> {
  factory $AllDetailCopyWith(AllDetail value, $Res Function(AllDetail) then) =
      _$AllDetailCopyWithImpl<$Res, AllDetail>;
  @useResult
  $Res call(
      {AddBankDetails? bankDetails,
      List<AddCareerDetail>? careerDetail,
      AddEducationDetail? educationDetail,
      AddReferralDetail? referralDetail,
      PersonalDetailsResponse? personalDetailsResponse});

  $AddBankDetailsCopyWith<$Res>? get bankDetails;
  $AddEducationDetailCopyWith<$Res>? get educationDetail;
  $AddReferralDetailCopyWith<$Res>? get referralDetail;
  $PersonalDetailsResponseCopyWith<$Res>? get personalDetailsResponse;
}

/// @nodoc
class _$AllDetailCopyWithImpl<$Res, $Val extends AllDetail>
    implements $AllDetailCopyWith<$Res> {
  _$AllDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankDetails = freezed,
    Object? careerDetail = freezed,
    Object? educationDetail = freezed,
    Object? referralDetail = freezed,
    Object? personalDetailsResponse = freezed,
  }) {
    return _then(_value.copyWith(
      bankDetails: freezed == bankDetails
          ? _value.bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as AddBankDetails?,
      careerDetail: freezed == careerDetail
          ? _value.careerDetail
          : careerDetail // ignore: cast_nullable_to_non_nullable
              as List<AddCareerDetail>?,
      educationDetail: freezed == educationDetail
          ? _value.educationDetail
          : educationDetail // ignore: cast_nullable_to_non_nullable
              as AddEducationDetail?,
      referralDetail: freezed == referralDetail
          ? _value.referralDetail
          : referralDetail // ignore: cast_nullable_to_non_nullable
              as AddReferralDetail?,
      personalDetailsResponse: freezed == personalDetailsResponse
          ? _value.personalDetailsResponse
          : personalDetailsResponse // ignore: cast_nullable_to_non_nullable
              as PersonalDetailsResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddBankDetailsCopyWith<$Res>? get bankDetails {
    if (_value.bankDetails == null) {
      return null;
    }

    return $AddBankDetailsCopyWith<$Res>(_value.bankDetails!, (value) {
      return _then(_value.copyWith(bankDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddEducationDetailCopyWith<$Res>? get educationDetail {
    if (_value.educationDetail == null) {
      return null;
    }

    return $AddEducationDetailCopyWith<$Res>(_value.educationDetail!, (value) {
      return _then(_value.copyWith(educationDetail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddReferralDetailCopyWith<$Res>? get referralDetail {
    if (_value.referralDetail == null) {
      return null;
    }

    return $AddReferralDetailCopyWith<$Res>(_value.referralDetail!, (value) {
      return _then(_value.copyWith(referralDetail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonalDetailsResponseCopyWith<$Res>? get personalDetailsResponse {
    if (_value.personalDetailsResponse == null) {
      return null;
    }

    return $PersonalDetailsResponseCopyWith<$Res>(
        _value.personalDetailsResponse!, (value) {
      return _then(_value.copyWith(personalDetailsResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllDetailImplCopyWith<$Res>
    implements $AllDetailCopyWith<$Res> {
  factory _$$AllDetailImplCopyWith(
          _$AllDetailImpl value, $Res Function(_$AllDetailImpl) then) =
      __$$AllDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddBankDetails? bankDetails,
      List<AddCareerDetail>? careerDetail,
      AddEducationDetail? educationDetail,
      AddReferralDetail? referralDetail,
      PersonalDetailsResponse? personalDetailsResponse});

  @override
  $AddBankDetailsCopyWith<$Res>? get bankDetails;
  @override
  $AddEducationDetailCopyWith<$Res>? get educationDetail;
  @override
  $AddReferralDetailCopyWith<$Res>? get referralDetail;
  @override
  $PersonalDetailsResponseCopyWith<$Res>? get personalDetailsResponse;
}

/// @nodoc
class __$$AllDetailImplCopyWithImpl<$Res>
    extends _$AllDetailCopyWithImpl<$Res, _$AllDetailImpl>
    implements _$$AllDetailImplCopyWith<$Res> {
  __$$AllDetailImplCopyWithImpl(
      _$AllDetailImpl _value, $Res Function(_$AllDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankDetails = freezed,
    Object? careerDetail = freezed,
    Object? educationDetail = freezed,
    Object? referralDetail = freezed,
    Object? personalDetailsResponse = freezed,
  }) {
    return _then(_$AllDetailImpl(
      bankDetails: freezed == bankDetails
          ? _value.bankDetails
          : bankDetails // ignore: cast_nullable_to_non_nullable
              as AddBankDetails?,
      careerDetail: freezed == careerDetail
          ? _value._careerDetail
          : careerDetail // ignore: cast_nullable_to_non_nullable
              as List<AddCareerDetail>?,
      educationDetail: freezed == educationDetail
          ? _value.educationDetail
          : educationDetail // ignore: cast_nullable_to_non_nullable
              as AddEducationDetail?,
      referralDetail: freezed == referralDetail
          ? _value.referralDetail
          : referralDetail // ignore: cast_nullable_to_non_nullable
              as AddReferralDetail?,
      personalDetailsResponse: freezed == personalDetailsResponse
          ? _value.personalDetailsResponse
          : personalDetailsResponse // ignore: cast_nullable_to_non_nullable
              as PersonalDetailsResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllDetailImpl implements _AllDetail {
  const _$AllDetailImpl(
      {this.bankDetails,
      final List<AddCareerDetail>? careerDetail,
      this.educationDetail,
      this.referralDetail,
      this.personalDetailsResponse})
      : _careerDetail = careerDetail;

  factory _$AllDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllDetailImplFromJson(json);

  @override
  final AddBankDetails? bankDetails;
  final List<AddCareerDetail>? _careerDetail;
  @override
  List<AddCareerDetail>? get careerDetail {
    final value = _careerDetail;
    if (value == null) return null;
    if (_careerDetail is EqualUnmodifiableListView) return _careerDetail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AddEducationDetail? educationDetail;
  @override
  final AddReferralDetail? referralDetail;
  @override
  final PersonalDetailsResponse? personalDetailsResponse;

  @override
  String toString() {
    return 'AllDetail(bankDetails: $bankDetails, careerDetail: $careerDetail, educationDetail: $educationDetail, referralDetail: $referralDetail, personalDetailsResponse: $personalDetailsResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllDetailImpl &&
            (identical(other.bankDetails, bankDetails) ||
                other.bankDetails == bankDetails) &&
            const DeepCollectionEquality()
                .equals(other._careerDetail, _careerDetail) &&
            (identical(other.educationDetail, educationDetail) ||
                other.educationDetail == educationDetail) &&
            (identical(other.referralDetail, referralDetail) ||
                other.referralDetail == referralDetail) &&
            (identical(
                    other.personalDetailsResponse, personalDetailsResponse) ||
                other.personalDetailsResponse == personalDetailsResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bankDetails,
      const DeepCollectionEquality().hash(_careerDetail),
      educationDetail,
      referralDetail,
      personalDetailsResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllDetailImplCopyWith<_$AllDetailImpl> get copyWith =>
      __$$AllDetailImplCopyWithImpl<_$AllDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllDetailImplToJson(
      this,
    );
  }
}

abstract class _AllDetail implements AllDetail {
  const factory _AllDetail(
          {final AddBankDetails? bankDetails,
          final List<AddCareerDetail>? careerDetail,
          final AddEducationDetail? educationDetail,
          final AddReferralDetail? referralDetail,
          final PersonalDetailsResponse? personalDetailsResponse}) =
      _$AllDetailImpl;

  factory _AllDetail.fromJson(Map<String, dynamic> json) =
      _$AllDetailImpl.fromJson;

  @override
  AddBankDetails? get bankDetails;
  @override
  List<AddCareerDetail>? get careerDetail;
  @override
  AddEducationDetail? get educationDetail;
  @override
  AddReferralDetail? get referralDetail;
  @override
  PersonalDetailsResponse? get personalDetailsResponse;
  @override
  @JsonKey(ignore: true)
  _$$AllDetailImplCopyWith<_$AllDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
