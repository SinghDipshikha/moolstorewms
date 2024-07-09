import 'package:freezed_annotation/freezed_annotation.dart';

part 'addReferralDetails.freezed.dart';
part 'addReferralDetails.g.dart';

@freezed
class AddReferralDetail with _$AddReferralDetail {
  const factory AddReferralDetail({
    int? id,
    int? userId,
    String? name,
    String? company,
    String? address,
    String? designation,
    String? mobileNumber,
    String? email,
    int? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AddReferralDetail;

  factory AddReferralDetail.fromJson(Map<String, Object?> json) =>
      _$AddReferralDetailFromJson(json);
}

@freezed
class AddReferralDetailUpdate with _$AddReferralDetailUpdate {
  const factory AddReferralDetailUpdate({
    // int? id,
    @Default("id") String id,
    @Default("userId") String userId,
    @Default("name") String name,
    @Default("company") String company,
    @Default("address") String address,
    @Default("designation") String designation,
    @Default("mobileNumber") String mobileNumber,
    @Default("email") String email,
    @Default("updatedBy") String updatedBy,
    @Default("createdAt") String createdAt,
    @Default("updatedAt") String updatedAt,
  }) = _AddReferralDetailUpdate;

  factory AddReferralDetailUpdate.fromJson(Map<String, Object?> json) =>
      _$AddReferralDetailUpdateFromJson(json);
}
