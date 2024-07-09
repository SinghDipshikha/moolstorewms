import 'package:freezed_annotation/freezed_annotation.dart';

part 'addReferralDetails.freezed.dart';
part 'addReferralDetails.g.dart';

@freezed
class AddReferralDetail with _$AddReferralDetail {
  const factory AddReferralDetail({
 int ?id,
    int ?userId,
    String? name,
    String? company,
    String ?address,
    String? designation,
    String?mobileNumber,
    String ?email,
    int ?updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AddReferralDetail;

  factory AddReferralDetail.fromJson(Map<String, Object?> json) =>
      _$AddReferralDetailFromJson(json);
}

 