import 'package:freezed_annotation/freezed_annotation.dart';

part 'verifyPoIndent.freezed.dart';
part 'verifyPoIndent.g.dart';

@freezed
class VerifyPoIndent with _$VerifyPoIndent {
  const factory VerifyPoIndent({
     String? status,
        int? sellerPurchaseOrderId,
        String? vehicleNumber,
        String? indentNumber,
  }) = _VerifyPoIndent;

  factory VerifyPoIndent.fromJson(Map<String, Object?> json) =>
      _$VerifyPoIndentFromJson(json);
}
      