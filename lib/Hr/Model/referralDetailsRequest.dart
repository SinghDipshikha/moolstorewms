import 'package:freezed_annotation/freezed_annotation.dart';

part 'referralDetailsRequest.freezed.dart';
part 'referralDetailsRequest.g.dart';

@freezed
class ReferralDetailsRequest with _$ReferralDetailsRequest {
  const factory ReferralDetailsRequest({
 int ?user_id,
    int ?updated_by,
    String ? name,
    String ?company,
    String ?designation,
    String ?email_id,
    String ?mobile_number,
    String ?address,

    
  }) = _ReferralDetailsRequest;

  factory ReferralDetailsRequest.fromJson(Map<String, Object?> json) =>
      _$ReferralDetailsRequestFromJson(json);
}
 
