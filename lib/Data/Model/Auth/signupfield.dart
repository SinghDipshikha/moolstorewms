import 'package:freezed_annotation/freezed_annotation.dart';

part 'signupfield.freezed.dart';
part 'signupfield.g.dart';

@freezed
class SignupField with _$SignupField {
  const factory SignupField({
    required int id,
    required String field_name,
    required String type,
    String? error_message_on_empt,
    String? invalid_message,
    dynamic value,
    //   String? regex,
    required int required,
  }) = _SignupField;

  factory SignupField.fromJson(Map<String, Object?> json) =>
      _$SignupFieldFromJson(json);
}
