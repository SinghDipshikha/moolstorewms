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
