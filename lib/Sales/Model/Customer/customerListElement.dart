import 'package:freezed_annotation/freezed_annotation.dart';

part 'customerListElement.freezed.dart';
part 'customerListElement.g.dart';

@freezed
class CustomerListElement with _$CustomerListElement {
  const factory CustomerListElement({
    int? id,
    String? first_name,
    String? customer_num,
    String? last_name,
    String? phone,
    String? email,
    String? company_name,
    String? avatar_url,
    int? status,
  }) = _CustomerListElement;

  factory CustomerListElement.fromJson(Map<String, Object?> json) =>
      _$CustomerListElementFromJson(json);
}
    // {
    //         "id": 31,
    //         "customer_num": "CUS031",
    //         "first_name": "Akshay",
    //         "last_name": "jain",
    //         "phone": "+919811966526",
    //         "status": 1,
    //         "company_name": "XYZ ltd."
    //     },