import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moolwmsstore/Hr/Model/Employee/addBankDetails.dart';
import 'package:moolwmsstore/Hr/Model/Employee/addCareerDetail.dart';
import 'package:moolwmsstore/Hr/Model/Employee/addEducationDetails.dart';
import 'package:moolwmsstore/Hr/Model/Employee/addReferralDetails.dart';
import 'package:moolwmsstore/Hr/Model/Employee/personaldetails.dart';

part 'allDetailModel.freezed.dart';
part 'allDetailModel.g.dart';

@freezed
class AllDetail with _$AllDetail {
  const factory AllDetail({
    AddBankDetails? bankDetails,
    AddCareerDetail? careerDetail,
    AddEducationDetail? educationDetail,
    AddReferralDetail? referralDetail,
    PersonalDetailsResponse? personalDetailsResponse,
  }) = _AllDetail;

  factory AllDetail.fromJson(Map<String, Object?> json) =>
      _$AllDetailFromJson(json);
}
