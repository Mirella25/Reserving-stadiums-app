import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_submit_request.freezed.dart';
part 'reset_password_submit_request.g.dart';

@freezed
class ResetPasswordSubmitRequest with _$ResetPasswordSubmitRequest {
  const factory ResetPasswordSubmitRequest({
    required String token,
    required String email,
    required String password,
    @JsonKey(name: 'password_confirmation') required String passwordConfirmation,
  }) = _ResetPasswordSubmitRequest;

  factory ResetPasswordSubmitRequest.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordSubmitRequestFromJson(json);
}
