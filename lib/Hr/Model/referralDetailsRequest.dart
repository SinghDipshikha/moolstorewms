import 'package:freezed_annotation/freezed_annotation.dart';

part 'referralDetailsRequest.freezed.dart';
part 'referralDetailsRequest.g.dart';

@freezed
class ReferralDetailsRequest with _$ReferralDetailsRequest {
  const factory ReferralDetailsRequest({
 int ?userId,
    int ?updatedBy,
    String ? name,
    String ?company,
    String ?designation,
    String ?emailId,
    String ?mobileNumber,
    String ?address,

    
  }) = _ReferralDetailsRequest;

  factory ReferralDetailsRequest.fromJson(Map<String, Object?> json) =>
      _$ReferralDetailsRequestFromJson(json);
}
