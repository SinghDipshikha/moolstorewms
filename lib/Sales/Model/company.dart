import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company({
    int? id,
    int? sellerCompanyDetailsID,
    int? user_id,
    int? seller_company_id,
    String? phone_no,
    String? address,
    String? state,
    String? gst_no,
    String? company_name,
    DateTime? created_at,
    dynamic updated_at,
    dynamic deleted_at,
    dynamic status,
  }) = _Company;

  factory Company.fromJson(Map<String, Object?> json) =>
      _$CompanyFromJson(json);
}
