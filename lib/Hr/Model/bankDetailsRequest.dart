import 'package:freezed_annotation/freezed_annotation.dart';

part 'bankDetailsRequest.freezed.dart';
part 'bankDetailsRequest.g.dart';

@freezed
class BankDetailsRequest with _$BankDetailsRequest {
  const factory BankDetailsRequest({
    int? id,
    int? user_id,
    int? updated_by,
    String? account_name,
    String? ifsc_no,
    String? bank_name,
    String? account_no,
    String? account_type,
    String? branch_name,
  }) = _BankDetailsRequest;

  factory BankDetailsRequest.fromJson(Map<String, Object?> json) =>
      _$BankDetailsRequestFromJson(json);
}
