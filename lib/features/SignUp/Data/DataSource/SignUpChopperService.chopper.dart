// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SignUpChopperService.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$SignUpChopperService extends SignUpChopperService {
  _$SignUpChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SignUpChopperService;

  @override
  Future<Response<SignupUserResponseModel>> userSignUp(
      Map<String, dynamic> body) {
    final Uri $url = Uri.parse('/users');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<SignupUserResponseModel, SignupUserResponseModel>($request);
  }
}
