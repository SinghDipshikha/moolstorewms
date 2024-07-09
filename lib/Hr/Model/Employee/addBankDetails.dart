import 'package:freezed_annotation/freezed_annotation.dart';

part 'addBankDetails.freezed.dart';
part 'addBankDetails.g.dart';

@freezed
class AddBankDetails with _$AddBankDetails {
  const factory AddBankDetails({
    int? id,
    int? user_id,
    String? account_name,
    String? bankbank_nameName,
    String? account_no,
    String? ifsc_no,
    String? branch_name,
    String? account_type,
    int? updated_by,
    int? status,
    DateTime? created_at,
    DateTime? updated_at,
  }) = _AddBankDetails;

  factory AddBankDetails.fromJson(Map<String, Object?> json) =>
      _$AddBankDetailsFromJson(json);
}

@freezed
class AddBankDetailsUpdate with _$AddBankDetailsUpdate {
  const factory AddBankDetailsUpdate({
    // int? id,
    @Default("id") String id,
    @Default("user_id") String user_id,
    @Default("account_name") String account_name,
    @Default("bankbank_nameName") String bankbank_nameName,
    @Default("account_no") String account_no,
    @Default("ifsc_no") String ifsc_no,
    @Default("branch_name") String branch_name,
    @Default("account_type") String account_type,
    @Default("updated_by") String updated_by,
    @Default("status") String status,
    @Default("created_at") String created_at,
    @Default("updated_at")String updated_at,
  }) = _AddBankDetailsUpdate;

  factory AddBankDetailsUpdate.fromJson(Map<String, Object?> json) =>
      _$AddBankDetailsUpdateFromJson(json);
}
