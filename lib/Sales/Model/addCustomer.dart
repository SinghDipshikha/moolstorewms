import 'package:freezed_annotation/freezed_annotation.dart';

part 'addCustomer.freezed.dart';
part 'addCustomer.g.dart';

@freezed
class AddCustomer with _$AddCustomer {
  const factory AddCustomer({
    int? addedBy,
    String? name,
    String? company_name,
    String? phone,
    String? cin,
    String? gst_number,
    String? email,
    String? state,
    String? address,
    String? avatar,
  }) = _AddCustomer;

  factory AddCustomer.fromJson(Map<String, Object?> json) =>
      _$AddCustomerFromJson(json);
}
