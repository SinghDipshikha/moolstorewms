import 'package:freezed_annotation/freezed_annotation.dart';

part 'indentElement.freezed.dart';
part 'indentElement.g.dart';

@freezed
class IndentElement with _$IndentElement {
  const factory IndentElement({
    String? ticket_id,
    String? order_number,
    int? shipped_to_company_id,
    String? shipped_to_company,
    String? IndentElement_name,
    DateTime? dateTime,
  }) = _IndentElement;

  factory IndentElement.fromJson(Map<String, Object?> json) =>
      _$IndentElementFromJson(json);
}
